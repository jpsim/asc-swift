import Foundation

#if canImport(FoundationNetworking)
    import FoundationNetworking
#endif

// MARK: -

/// Client used to interface with all available App Store Connect APIs.
///
/// The primary mechanism of this library.
public actor AppStoreConnectClient {
    /// The network (or whatever) transport layer.
    ///
    /// Implemented by ``URLSession`` by default.
    package var transport: any Transport

    /// Authorization provider.
    ///
    /// Used to authenticate with the App Store Connect API. Implemented by ``JWT`` by default.
    package var authenticator: any Authenticator

    package var encoder: JSONEncoder {
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .custom(encodeISO8601Date(_:encoder:))
        return encoder
    }

    package var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .custom(decodeISO8601Date(with:))
        return decoder
    }

    /// Creates a session with the specified configuration, transport layer, and token provider.
    ///
    /// - Parameters:
    ///   - transport: Transport layer used for API communication. Uses the shared `URLSession` by default.
    ///   - authenticator: Responsible for generating and managing access tokens. ``JWT`` is the default implementation.
    public init(
        transport: any Transport = URLSession.shared,
        authenticator: any Authenticator
    ) {
        self.transport = transport
        self.authenticator = authenticator
    }

    // MARK: - Requests

    /// Performs the given request asynchronously.
    /// - Parameter request: A request.
    /// - Throws: An error describing the manner in which the request failed to complete.
    public func send(_ request: Request<Void>) async throws {
        let urlRequest = try URLRequest(request: request, encoder: encoder, authenticator: &authenticator)
        let response = try await transport.send(request: urlRequest, decoder: decoder)
        try response.check()
    }

    /// Performs the given request asynchronously.
    /// - Parameter request: A request.
    /// - Returns: The response from the App Store Connect API.
    /// - Throws: An error describing the manner in which the request failed to complete.
    public func send<Response>(_ request: Request<Response>) async throws -> Response
    where Response: Decodable {
        let urlRequest = try URLRequest(request: request, encoder: encoder, authenticator: &authenticator)
        let response = try await transport.send(request: urlRequest, decoder: decoder)
        try response.check()

        return try response.decode(using: decoder)
    }

    // MARK: - Pagination

    /// Convenience method for accessing a series of paged resources in a sequence asynchronously.
    /// - Parameter request: The initial request of the sequence.
    /// - Returns: A ``PagedResponses`` sequence which will provide with each page's response asynchronously.
    public nonisolated func pages<Response>(_ request: Request<Response>)
        -> PagedResponses<Response>
    {
        PagedResponses(request: request, client: self)
    }

    /// Performs the request that was used to fetch the current object to fetch the next page asynchronously.
    ///
    /// - Parameters:
    ///   - request: A request.
    ///   - currentPage: The API object representing the current page.
    /// - Returns: The response from the App Store Connect API.
    /// - Throws: An error describing the manner in which the request failed to complete.
    public func send<Response>(_ request: Request<Response>, pageAfter currentPage: Response) async throws -> Response?
    where Response: Decodable {
        guard let nextPage = pagedDocumentLinks(currentPage)?.next else {
            return nil
        }

        let urlRequest = try URLRequest(url: nextPage, encoder: encoder, authenticator: &authenticator)
        let response = try await transport.send(request: urlRequest, decoder: decoder)
        try response.check()

        return try response.decode(using: decoder)
    }

    /// Performs the given request asynchronously.
    /// - Parameter object: Some object that may contain a property of the type ``PagedDocumentLinks``.
    /// - Returns: The ``PagedDocumentLinks`` instance, if one exists.
    private nonisolated func pagedDocumentLinks<Entity>(_ object: Entity) -> PagedDocumentLinks? {
        let mirror = Mirror(reflecting: object)
        return mirror.children.first(where: { $0.value is PagedDocumentLinks })
            .flatMap { $0.value as? PagedDocumentLinks }
    }

    // MARK: - Downloads

    /// Downloads a resource asynchronously to a temporary location.
    /// - Parameter request: A request.
    /// - Returns: URL to the location of the resource on-disk.
    /// - Throws: An error describing the manner in which the request failed to complete.
    public func download(_ request: Request<Data>) async throws -> URL {
        let urlRequest = try URLRequest(request: request, encoder: encoder, authenticator: &authenticator)
        let response = try await transport.download(request: urlRequest)
        try response.check()

        return try response.decode()
    }
}
