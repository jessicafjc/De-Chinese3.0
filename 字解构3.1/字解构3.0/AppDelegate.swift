//
//  AppDelegate.swift
//  字解构3.0
//
//  Created by jessicafu on 2017/7/19.
//  Copyright © 2017年 jessicafu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 改变 StatusBar 颜色
        application.statusBarStyle = UIStatusBarStyle.lightContent
        
        // 改变 navigation bar 的背景色及前景色
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.isTranslucent = false
        navigationBarAppearace.barTintColor = UIColor(hex: 0x25b6ed)
        navigationBarAppearace.tintColor = UIColor.white
        navigationBarAppearace.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        //判断用户是否是首次启动
        let ifStarted = UserDefaults.standard.value(forKey: "started")
        if ifStarted == nil {
            //首次启动
            let guideViewController = GuideViewController()
            self.window?.rootViewController = guideViewController
            guideViewController.startClosure = {() -> Void in
                self.window?.rootViewController = ViewController()
                let userDefaults = UserDefaults.standard
                //userDefaults.setValue("start", forKey: "started")
                userDefaults.synchronize()
            }
        }
        else {
            self.window?.rootViewController = ViewController()
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

