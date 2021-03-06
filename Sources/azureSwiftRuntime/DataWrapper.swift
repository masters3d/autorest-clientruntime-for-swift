/**
 * Copyright (c) Microsoft Corporation. All rights reserved.
 * Licensed under the MIT License. See License.txt in the project root for
 * license information.
 */

import Foundation

public struct DataWrapper : Decodable {
    public let data: Data;
    
    public init(data: Data) {
        self.data = data as Data;
    }
    
    public init(from decoder: Decoder) throws {
        self.data = Data()
    }
}
