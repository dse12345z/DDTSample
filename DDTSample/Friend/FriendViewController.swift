//
//  FriendViewController.swift
//  DDTSample
//
//  Created by Daisuke on 2022/12/13.
//

import UIKit

/// 好友頁面
///
///  可跳轉至 ```KOKOViewControlle```
///
class FriendViewController: UIViewController {
    
    let money = "12344"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

// MARK: - Action
extension FriendViewController {
    
    @IBAction func printMtehodButtonAction(_ sender: Any) {
        printInstanceMethods(FriendViewController.self)

    }
    
}

// MARK: - Private Method
extension FriendViewController {
    
    /// fileprivate call
    /// - Parameter string: 字串
    @objc fileprivate func fileprivateCall() {
        print("Friend 頁面的 fileprivateCall \(self.money)");
    }
    
}
