//
//  MMBTabBarController.swift
//  DDTSample
//
//  Created by Daisuke on 2022/12/13.
//

import UIKit

class MMBTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 錢錢
        let moneyVC = MoneyViewController()
        moneyVC.view.backgroundColor = .yellow
        moneyVC.tabBarItem.title = "錢錢"
        
        // 朋友
        let friendVC = FriendViewController()
        let friendNavi = UINavigationController(rootViewController: friendVC)
        friendNavi.tabBarItem.title = "朋友"
        
        // koko
        let kokoVC = KOKOViewController()
        kokoVC.view.backgroundColor = .gray
        kokoVC.tabBarItem.title = "koko"
        
        let expensesVC = UIViewController()
        expensesVC.tabBarItem.title = "記帳"
        
        let settingVC = UIViewController()
        settingVC.tabBarItem.title = "設定"
        
        
        self.viewControllers = [moneyVC, friendNavi, kokoVC, expensesVC, settingVC]
        self.tabBar.backgroundColor = .gray         // 背景顏色
        self.tabBar.tintColor = .white
    }
    
}
