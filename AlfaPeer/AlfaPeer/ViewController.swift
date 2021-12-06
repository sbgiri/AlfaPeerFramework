//
//  ViewController.swift
//  AlfaPeer
//
//  Created by user on 23/11/21.
//

import UIKit
import AlfaPeerFramework

class ViewController: UIViewController {
    
    var address = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        let abc = AlfaPeer()
//        abc.createAddressFromNemonic(mnemonic: "sad ski valley choice trap together suffer rail hobby level poverty license") { (key, address) in
//            debugPrint("With mnemonics==",address)
//            self.address = address
//        }
        
    }
    
    @IBAction func cmdCreate(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NmemonicsVC") as! NmemonicsVC
        vc.address = self.address
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func cmdImport(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "NmemonicsVC") as! NmemonicsVC
        vc.address = self.address
        self.navigationController?.pushViewController(vc, animated: true)

    }
}
