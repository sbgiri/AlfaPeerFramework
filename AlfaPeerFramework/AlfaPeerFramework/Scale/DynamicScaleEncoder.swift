import Foundation
import BigInt

public final class DynamicScaleEncoder {
    private var encoder: ScaleEncoder = ScaleEncoder()

    private var modifiers: [ScaleCodingModifier] = []

    public let version: UInt64 = 0


    private func handleCommonOption(for json: JSON) {
        if case .null = json {
            encoder.appendRaw(data: Data([0]))
        } else {
            encoder.appendRaw(data: Data([1]))
        }
    }

    private func handleBoolOption(for value: Bool?) throws {
        try ScaleBoolOption(value: value).encode(scaleEncoder: encoder)
    }

    private func encodeCompact(value: JSON) throws {
        guard let str = value.stringValue, let bigInt = BigUInt(str) else {
            throw DynamicScaleEncoderError.expectedStringForCompact(json: value)
        }

        try bigInt.encode(scaleEncoder: encoder)
    }

    private func encodeFixedInt(value: JSON, byteLength: Int) throws {
        guard let str = value.stringValue, let intValue = BigUInt(str) else {
            throw DynamicScaleEncoderError.expectedStringForInt(json: value)
        }

        var encodedData: [UInt8] = intValue.serialize().reversed()

        while encodedData.count < byteLength {
            encodedData.append(0)
        }

        encoder.appendRaw(data: Data(encodedData))
    }

    private func appendFixedUnsigned(json: JSON, byteLength: Int) throws {
        if modifiers.last == .compact {
            modifiers.removeLast()

           try encodeCompact(value: json)
        } else {
            try encodeFixedInt(value: json, byteLength: byteLength)
        }
    }
}
