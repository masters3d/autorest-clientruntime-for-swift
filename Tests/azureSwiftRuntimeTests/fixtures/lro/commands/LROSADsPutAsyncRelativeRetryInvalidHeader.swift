import Foundation
import azureSwiftRuntime
// PutAsyncRelativeRetryInvalidHeader long running put request, service returns a 200 to the initial request, with an
// entity that contains ProvisioningState=’Creating’. The endpoint indicated in the azureAsyncOperation header is
// invalid. This method may poll for completion. Polling can be canceled by passing the cancel channel argument. The
// channel will be used to cancel polling and any outstanding HTTP requests.
class LROSADsPutAsyncRelativeRetryInvalidHeaderCommand : BaseCommand {
    var product :  ProductTypeProtocol?

    override init() {
        super.init()
        self.method = "Put"
        self.isLongRunningOperation = true
        self.path = "/lro/error/putasync/retry/invalidheader"
    }

    override func preCall()  {
        self.body = product
    }

    override func encodeBody() throws -> Data? {
        return try CoderFactory.encoder(for: .json).encode(product as! ProductType?)
    }
    
    public func execute(client: RuntimeClient) throws -> ProductTypeProtocol? {
        return try client.execute(command: self) as! ProductTypeProtocol?
    }
    
    override func returnFunc(data: Data) throws -> Decodable? {
        return try CoderFactory.decoder(for: .json).decode(ProductType?.self, from: data)
    }
    
    public func executeAsync(client: RuntimeClient, completionHandler: @escaping (ProductTypeProtocol?, Error?) -> Void) {
        client.executeAsyncLRO (command: self) {
            (result: ProductType?, error: Error?)  in
            completionHandler(result, error)
        }
    }
}
