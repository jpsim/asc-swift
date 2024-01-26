// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swift-format-ignore-file

import Foundation

public struct ErrorResponse: Codable, Equatable {
    public var errors: [Error]?

    public struct Error: Codable, Equatable, Identifiable {
        public var id: String?
        public var status: String
        public var code: String
        public var title: String
        public var detail: String
        public var source: Source?
        public var meta: [String: AnyJSON]?

        public enum Source: Codable, Equatable {
            case errorSourcePointer(ErrorSourcePointer)
            case errorSourceParameter(ErrorSourceParameter)

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                if let value = try? container.decode(ErrorSourcePointer.self) {
                    self = .errorSourcePointer(value)
                } else if let value = try? container.decode(ErrorSourceParameter.self) {
                    self = .errorSourceParameter(value)
                } else {
                    throw DecodingError.dataCorruptedError(
                        in: container,
                        debugDescription: "Data could not be decoded as any of the expected types (ErrorSourcePointer, ErrorSourceParameter)."
                    )
                }
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.singleValueContainer()
                switch self {
                case .errorSourcePointer(let value): try container.encode(value)
                case .errorSourceParameter(let value): try container.encode(value)
                }
            }
        }

        public init(id: String? = nil, status: String, code: String, title: String, detail: String, source: Source? = nil, meta: [String: AnyJSON]? = nil) {
            self.id = id
            self.status = status
            self.code = code
            self.title = title
            self.detail = detail
            self.source = source
            self.meta = meta
        }
    }

    public init(errors: [Error]? = nil) {
        self.errors = errors
    }
}
