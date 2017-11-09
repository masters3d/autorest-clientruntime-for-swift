import Foundation
public struct SkuType : SkuTypeProtocol {
    public var name: SkuNameEnum?
    public var tier: SkuTierEnum?
    public var resourceType: String?
    public var kind: KindEnum?
    public var locations: [String??]?
    public var capabilities: [SKUCapabilityTypeProtocol?]?
    public var restrictions: [RestrictionTypeProtocol?]?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case tier = "tier"
        case resourceType = "resourceType"
        case kind = "kind"
        case locations = "locations"
        case capabilities = "capabilities"
        case restrictions = "restrictions"
    }

  public init() {
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    name = try container.decode(SkuNameEnum?.self, forKey: .name)
    tier = try container.decode(SkuTierEnum?.self, forKey: .tier)
    resourceType = try container.decode(String?.self, forKey: .resourceType)
    kind = try container.decode(KindEnum?.self, forKey: .kind)
    locations = try container.decode([String?]?.self, forKey: .locations)
    capabilities = try container.decode([SKUCapabilityType?]?.self, forKey: .capabilities)
    restrictions = try container.decode([RestrictionType?]?.self, forKey: .restrictions)
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(name as! SkuNameEnum?, forKey: .name)
    try container.encode(tier as! SkuTierEnum?, forKey: .tier)
    try container.encode(resourceType, forKey: .resourceType)
    try container.encode(kind as! KindEnum?, forKey: .kind)
    try container.encode(locations as! [String?]?, forKey: .locations)
    try container.encode(capabilities as! [SKUCapabilityType?]?, forKey: .capabilities)
    try container.encode(restrictions as! [RestrictionType?]?, forKey: .restrictions)
  }
}