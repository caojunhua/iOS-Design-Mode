//
//  AppDelegate.swift
//  Viper
//
//  Created by cao hua on 2022/7/1.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let doubanList = DoubanListRouters.createDoubanListViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = doubanList
        window?.makeKeyAndVisible()
        
        return true
    }

   


}

