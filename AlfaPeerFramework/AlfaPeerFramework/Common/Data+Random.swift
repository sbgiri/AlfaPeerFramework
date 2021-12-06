import Foundation

enum RandomDataError: Error {
    case generatorFailed
}

extension Data {
    static func generateRandomBytes(of length: Int) throws -> Data {
        var data = Data(count: length)
        let result = data.withUnsafeMutableBytes {
            SecRandomCopyBytes(kSecRandomDefault, length, $0.baseAddress!)
        }

        guard result == errSecSuccess else {
            throw RandomDataError.generatorFailed
        }

        return data
    }
}


extension Data {
    static func randomBytes(length: Int) -> Data {
        var bytes = Data(count: length)
        _ = bytes.withUnsafeMutableBytes { SecRandomCopyBytes(kSecRandomDefault, length, $0.baseAddress!) }
        return bytes
    }
}
