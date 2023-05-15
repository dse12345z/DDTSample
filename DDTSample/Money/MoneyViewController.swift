//
//  MoneyViewController.swift
//  DDTSample
//
//  Created by Daisuke on 2023/5/6.
//

import UIKit


class MoneyViewController: UIViewController {

    let money = "77777"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK: - Action
extension MoneyViewController {
    
    @IBAction func printMtehodButtonAction(_ sender: Any) {
        printInstanceMethods(MoneyViewController.self)
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        self.perform(selector: "fileprivateCall", from: FriendViewController())
        
        self.perform(selector: "fileprivateCall", from: KOKOViewController())
    }
    
}
