import Foundation

typealias AccountAddress = String
typealias AccountId = Data
typealias ParaId = UInt32
typealias TrieIndex = UInt32
typealias BlockNumber = UInt32
typealias BlockTime = UInt64
typealias LeasingPeriod = UInt32
typealias Slot = UInt64
typealias SessionIndex = UInt32
typealias Moment = UInt32
typealias EraIndex = UInt32
typealias EraRange = (start: EraIndex, end: EraIndex)

extension AccountId {
    static func matchHex(_ value: String) -> AccountId? {
        guard let data = try? Data(hexString: value) else {
            return nil
        }

        return data.count == SubstrateConstants.accountIdLength ? data : nil
    }
}

struct SubstrateConstants {
    static let maxNominations = 16
    static let accountIdLength = 32
    static let paraIdLength = 4
    static let paraIdType = "ParaId"
    static let maxUnbondingRequests = 32
}

