import Foundation
import IrohaCrypto

public enum Chain: String, Codable, CaseIterable {
    case kusama = "Kusama"
    case polkadot = "Polkadot"
    case westend = "Westend"
    case rococo = "Rococo"
}

extension Chain {
    var addressType: SNAddressType {
        switch self {
        case .polkadot:
            return .polkadotMain
        case .kusama:
            return .kusamaMain
        case .westend:
            return .genericSubstrate
        case .rococo:
            return .kusamaSecondary
        }
    }
}

