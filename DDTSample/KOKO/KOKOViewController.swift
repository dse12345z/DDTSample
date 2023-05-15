//
//  KOKOViewController.swift
//  DDTSample
//
//  Created by Daisuke on 2023/5/13.
//

import UIKit

class KOKOViewController: UIViewController {

    let money = "koko"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

// MARK: - Action
extension KOKOViewController {
    
    @IBAction func printMtehodButtonAction(_ sender: Any) {
        printInstanceMethods(KOKOViewController.self)

    }
    
}

// MARK: - Private Method
extension KOKOViewController {
    
    @objc fileprivate func fileprivateCall() {
        print("KOKO 頁面的 fileprivateCall \(self.money)");
    }

}
