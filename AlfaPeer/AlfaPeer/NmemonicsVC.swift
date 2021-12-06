//
//  NmemonicsVC.swift
//  AlfaPeer
//
//  Created by user on 24/11/21.
//

import UIKit

class NmemonicsVC: UIViewController {
    @IBOutlet weak var txtNmemonics: UITextView!
    var address = ""
    @IBOutlet weak var lblAddress: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        txtNmemonics.layer.borderWidth = 1
        txtNmemonics.layer.borderColor = UIColor.black.cgColor
        self.lblAddress.text = self.address 
    }

    @IBAction func cmdNext(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "WalletBalanceVC") as! WalletBalanceVC
        self.navigationController?.pushViewController(vc, animated: true)

    }
}
