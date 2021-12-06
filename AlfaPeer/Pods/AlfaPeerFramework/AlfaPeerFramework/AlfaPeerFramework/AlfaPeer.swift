//
//  AlphaPeer.swift
//  AplhaPeer
//
//  Created by user on 18/11/21.
//

import Foundation
//import UIKit
//import CryptoSwift
//import IrohaCrypto
//import BigInt

public class AlfaPeer{
    
    public init (){}
    
    public func test()->String{
        return "testing framework"
    }
    
//    public func createNemonicAndAddress(completion:((_ privatekey:String, _ address: String)->())){
//        let mnemonics = Mnemonic.create()
//        self.createAddressFromNemonic(mnemonic: mnemonics) { (privateKey, address) in
//            debugPrint(privateKey, address)
//            completion(privateKey, address)
//        }
//    }
//
//    public func createAddressFromNemonic(mnemonic: String,completion:((_ privatekey:String, _ address: String)->())){
//        do {
//
//            let cryptoType = CryptoType.sr25519
//            _ = Chain.westend
//            let junctionResult: JunctionResult?
//
//            junctionResult = nil
//            let password = junctionResult?.password ?? ""
//
//            let seedFactory = SeedFactory()
//            let result = try seedFactory.deriveSeed(
//                from: mnemonic,
//                password: password
//            )
//
//            let keypairFactory = self.createKeypairFactory(cryptoType)
//
//            let chaincodes = junctionResult?.chaincodes ?? []
//            let keypair = try keypairFactory.createKeypairFromSeed(
//                result.seed.miniSeed,
//                chaincodeList: chaincodes
//            )
//
//            let addressFactory = SS58AddressFactory()
//            let address = try addressFactory.address(
//                fromPublicKey: keypair.publicKey(),
//                type: SNAddressType(rawValue: 42)!
//            )
//            completion("",address)
//
//        }catch{
//
//        }
//    }
//
//    private func createKeypairFactory(_ cryptoType: CryptoType) -> KeypairFactoryProtocol {
//        switch cryptoType {
//        case .sr25519:
//            return SR25519KeypairFactory()
//        case .ed25519:
//            return Ed25519KeypairFactory()
//        case .ecdsa:
//            return EcdsaKeypairFactory()
//        }
//    }
    
}
