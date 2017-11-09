import Foundation
public struct StorageAccountKeyType : StorageAccountKeyTypeProtocol {
    public var keyName: String?
    public var value: String?
    public var permissions: KeyPermissionEnum?

    enum CodingKeys: String, CodingKey {
        case keyName = "keyName"
        case value = "value"
        case permissions = "permissions"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    keyName = try container.decode(String?.self, forKey: .keyName)
    value = try container.decode(String?.self, forKey: .value)
    permissions = try container.decode(KeyPermissionEnum?.self, forKey: .permissions)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(keyName, forKey: .keyName)
    try container.encode(value, forKey: .value)
    try container.encode(permissions as! KeyPermissionEnum?, forKey: .permissions)
  }
}