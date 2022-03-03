//
//  AppDelegate.swift
//  Test_iOS
//
//  Created by 台莉捺子 on 2022/03/02.
//

import UIKit

import SwiftyBeaver

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
        -> Bool
    {
        logger.addDestination(ConsoleDestination())
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        
        let userSearchViewController = UserSearchViewController()
        userSearchViewController.reactor = UserSearchReactor()
        
        let navigationController = UINavigationController(
            rootViewController: userSearchViewController
        )
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.window = window
        
        return true
    }
    
}
