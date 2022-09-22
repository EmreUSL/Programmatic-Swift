//
//  AppDelegate.swift
//  UINavigationController
//
//  Created by emre usul on 18.09.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        
        let nav = UINavigationController(rootViewController: ViewController())
        window?.rootViewController = nav
        
        return true
    }

}

