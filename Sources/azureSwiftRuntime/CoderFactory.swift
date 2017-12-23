//
//  EncoderFactory.swift
//  azureSwiftRuntimePackageDescription
//
//

import Foundation

public class CoderFactory {
    public static func encoder(for mimeType: MimeType) throws -> AzureEncoder {
        switch(mimeType) {
            case .json:
                return AzureJSONEncoder()
            case .xml:
                return PropertyListEncoder()
            case .gif, .jpeg, .png:
                return ImageEncoder()
            default:
                throw RuntimeError.general(message: "Decoder for \(mimeType) not found.")
        }
    }
    
    public static func decoder(for mimeType: MimeType) throws -> AzureDecoder {
        switch(mimeType) {
            case .json:
                return AzureJSONDecoder();
            case .xml:
                return PropertyListDecoder()
            default:
                throw RuntimeError.general(message: "Decoder for \(mimeType) not found.")
        }
    }
}

public protocol AzureEncoder {
    func encode<T>(_ value: T?) throws -> Data where T : Encodable
}

public protocol AzureDecoder {
    func decode<T>(_ type: T.Type, from data: Data) throws -> T where T : Decodable
}

extension AzureJSONEncoder : AzureEncoder {
}

extension PropertyListEncoder : AzureEncoder {
}

extension AzureJSONDecoder : AzureDecoder {
    
}

extension PropertyListDecoder : AzureDecoder {
    
}

