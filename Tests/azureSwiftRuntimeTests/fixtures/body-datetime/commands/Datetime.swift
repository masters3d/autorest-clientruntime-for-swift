// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

// Datetime is the test Infrastructure for AutoRest
import Foundation
import azureSwiftRuntime
struct Datetime {
    // GetInvalid get invalid datetime value
    public class GetInvalidCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/invalid"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }
        
        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTime)
            }
            
            throw DecodeError.unknownMimeType
        }
        
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Date?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: Date?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetLocalNegativeOffsetLowercaseMaxDateTime get max datetime value with positive num offset
    // 9999-12-31t23:59:59.9999999-14:00
    public class GetLocalNegativeOffsetLowercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/localnegativeoffset/lowercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetLocalNegativeOffsetMinDateTime get min datetime value 0001-01-01T00:00:00-14:00
    public class GetLocalNegativeOffsetMinDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/min/localnegativeoffset"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetLocalNegativeOffsetUppercaseMaxDateTime get max datetime value with positive num offset
    // 9999-12-31T23:59:59.9999999-14:00
    public class GetLocalNegativeOffsetUppercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/localnegativeoffset/uppercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetLocalPositiveOffsetLowercaseMaxDateTime get max datetime value with positive num offset
    // 9999-12-31t23:59:59.9999999+14:00
    public class GetLocalPositiveOffsetLowercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/localpositiveoffset/lowercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetLocalPositiveOffsetMinDateTime get min datetime value 0001-01-01T00:00:00+14:00
    public class GetLocalPositiveOffsetMinDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/min/localpositiveoffset"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetLocalPositiveOffsetUppercaseMaxDateTime get max datetime value with positive num offset
    // 9999-12-31T23:59:59.9999999+14:00
    public class GetLocalPositiveOffsetUppercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/localpositiveoffset/uppercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetNull get null datetime value
    public class GetNullCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/null"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                return try decoder.decode(String?.self, from: data)
            }
            throw DecodeError.unknownMimeType
        }
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (String?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: String?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetOverflow get overflow datetime value
    public class GetOverflowCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/overflow"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTime)
            }
            
            throw DecodeError.unknownMimeType
        }
        
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Date?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: Date?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetUnderflow get underflow datetime value
    public class GetUnderflowCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/underflow"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTime)
            }
            
            throw DecodeError.unknownMimeType
        }
        
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Date?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: Date?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetUtcLowercaseMaxDateTime get max datetime value 9999-12-31t23:59:59.9999999z
    public class GetUtcLowercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/utc/lowercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTime)
            }
            
            throw DecodeError.unknownMimeType
        }
        
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Date?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: Date?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetUtcMinDateTime get min datetime value 0001-01-01T00:00:00Z
    public class GetUtcMinDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/min/utc"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTime)
            }
            
            throw DecodeError.unknownMimeType
        }
        
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Date?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: Date?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // GetUtcUppercaseMaxDateTime get max datetime value 9999-12-31T23:59:59.9999999Z
    public class GetUtcUppercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/utc/uppercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTime)
            }
            
            throw DecodeError.unknownMimeType
        }
        
        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Date?, Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (result: Date?, error: Error?) in
                completionHandler(result, error)
            }
        }
    }

    // PutLocalNegativeOffsetMaxDateTime put max datetime value with positive numoffset 9999-12-31t23:59:59.9999999-14:00
    public class PutLocalNegativeOffsetMaxDateTimeCommand : BaseCommand {
        public var datetimeBody :  String??

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/localnegativeoffset"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(datetimeBody)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }

    // PutLocalNegativeOffsetMinDateTime put min datetime value 0001-01-01T00:00:00-14:00
    public class PutLocalNegativeOffsetMinDateTimeCommand : BaseCommand {
        public var datetimeBody :  String??

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetime/min/localnegativeoffset"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(datetimeBody)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }

    // PutLocalPositiveOffsetMaxDateTime put max datetime value with positive numoffset 9999-12-31t23:59:59.9999999+14:00
    public class PutLocalPositiveOffsetMaxDateTimeCommand : BaseCommand {
        public var datetimeBody :  String??

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/localpositiveoffset"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(datetimeBody)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }

    // PutLocalPositiveOffsetMinDateTime put min datetime value 0001-01-01T00:00:00+14:00
    public class PutLocalPositiveOffsetMinDateTimeCommand : BaseCommand {
        public var datetimeBody :  String??

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetime/min/localpositiveoffset"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let encodedValue = try encoder.encode(datetimeBody)
                return encodedValue
            }
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }

    // PutUtcMaxDateTime put max datetime value 9999-12-31T23:59:59.9999999Z
    public class PutUtcMaxDateTimeCommand : BaseCommand {
        public var datetimeBody :  Date?

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetime/max/utc"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
            self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let dateBodyString = DateConverter.toString(date: datetimeBody, format: .dateTime)
                let encodedValue = try encoder.encode(dateBodyString)
                return encodedValue
            }
            
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }

    // PutUtcMinDateTime put min datetime value 0001-01-01T00:00:00Z
    public class PutUtcMinDateTimeCommand : BaseCommand {
        public var datetimeBody :  Date?

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetime/min/utc"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let dateBodyString = DateConverter.toString(date: datetimeBody, format: .dateTime)
                let encodedValue = try encoder.encode(dateBodyString)
                return encodedValue
            }
            
            throw DecodeError.unknownMimeType
        }

        public func execute(client: RuntimeClient,
            completionHandler: @escaping (Error?) -> Void) -> Void {
            client.executeAsync(command: self) {
                (error) in
                completionHandler(error)
            }
        }
    }

}
