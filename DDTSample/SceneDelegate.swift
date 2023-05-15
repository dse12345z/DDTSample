//
//  SceneDelegate.swift
//  DDTSample
//
//  Created by Daisuke on 2022/12/13.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {
            
            // error handle
            return
        }
        
        let tabBar = MMBTabBarController()
        
        let window = UIWindow(windowScene: windowScene) // 初始化 window
        window.backgroundColor = UIColor.white
        window.rootViewController = tabBar              // 指定 Window 第一個畫面
        window.makeKeyAndVisible()                      // 顯示於當前視窗
        self.window = window
    }

}

