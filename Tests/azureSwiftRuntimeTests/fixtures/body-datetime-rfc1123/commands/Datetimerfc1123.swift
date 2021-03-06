// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

// Datetimerfc1123 is the test Infrastructure for AutoRest
import Foundation
import azureSwiftRuntime
struct Datetimerfc1123 {
    // GetInvalid get invalid datetime value
    public class GetInvalidCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/invalid"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .date)
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
            self.path = "/datetimerfc1123/null"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .date)
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

    // GetOverflow get overflow datetime value
    public class GetOverflowCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/overflow"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .date)
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
            self.path = "/datetimerfc1123/underflow"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .date)
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

    // GetUtcLowercaseMaxDateTime get max datetime value fri, 31 dec 9999 23:59:59 gmt
    public class GetUtcLowercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/max/lowercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTimeRfc1123)
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

    // GetUtcMinDateTime get min datetime value Mon, 1 Jan 0001 00:00:00 GMT
    public class GetUtcMinDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/min"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
    }


        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTimeRfc1123)
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

    // GetUtcUppercaseMaxDateTime get max datetime value FRI, 31 DEC 9999 23:59:59 GMT
    public class GetUtcUppercaseMaxDateTimeCommand : BaseCommand {

        public override init() {
            super.init()
            self.method = "Get"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/max/uppercase"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        }

        public override func returnFunc(data: Data) throws -> Decodable? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let decoder = try CoderFactory.decoder(for: mimeType)
                let dataString = try decoder.decode(String?.self, from: data)
                return DateConverter.fromString(dateStr: dataString, format: .dateTimeRfc1123)
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

    // PutUtcMaxDateTime put max datetime value Fri, 31 Dec 9999 23:59:59 GMT
    public class PutUtcMaxDateTimeCommand : BaseCommand {
        public var datetimeBody :  Date?

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/max"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let dateBodyString = DateConverter.toString(date: datetimeBody, format: .dateTimeRfc1123)
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

    // PutUtcMinDateTime put min datetime value Mon, 1 Jan 0001 00:00:00 GMT
    public class PutUtcMinDateTimeCommand : BaseCommand {
        public var datetimeBody :  Date?

        public override init() {
            super.init()
            self.method = "Put"
            self.isLongRunningOperation = false
            self.path = "/datetimerfc1123/min"
            self.headerParameters = ["Content-Type":"application/json; charset=utf-8"]
        }

        public override func preCall()  {
        self.body = datetimeBody
        }

        public override func encodeBody() throws -> Data? {
            let contentType = "application/json"
            if let mimeType = MimeType.getType(forStr: contentType) {
                let encoder = try CoderFactory.encoder(for: mimeType)
                let dateBodyString = DateConverter.toString(date: datetimeBody, format: .dateTimeRfc1123)
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
