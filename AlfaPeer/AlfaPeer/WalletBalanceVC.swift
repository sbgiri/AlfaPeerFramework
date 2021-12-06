//
//  WalletBalanceVC.swift
//  AlfaPeer
//
//  Created by user on 24/11/21.
//

import UIKit

class WalletBalanceVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cmdSend(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SendVC") as! SendVC
        self.navigationController?.pushViewController(vc, animated: true)

    }
    @IBAction func cmdReceive(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ReceiveVC") as! ReceiveVC
        self.navigationController?.pushViewController(vc, animated: true)

    }
    
}
