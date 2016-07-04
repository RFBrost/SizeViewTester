//
//  AppDelegate.swift
//  SizeViewTester
//
//  Created by Robert Brost on 05/31/16.
//  Copyright © 2016 RFBrost. All rights reserved.
//

import UIKit

// ----------------------------------------------------------- class AppDelegate

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // ----- AppDelegate: application(UIApplication,[NSObject:AnyObject]?)->Bool

    func application(application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        print("AppDelegate: Application Finishing Launching.")
        return true
    }   //  end of application(UIApplication,[NSObject:AnyObject]?)->Bool

    // ----------------- AppDelegate: applicationWillResignActive(UIApplication)

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. 
        // This can occur for certain types of temporary interruptions (such as 
        // an incoming phone call or SMS message) or when the user quits the 
        // application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle 
        // down OpenGL ES frame rates. Games should use this method to pause the game.
        
        print("AppDelegate: Application Will Resign Active")
    }   //  end of applicationWillResignActive(UIApplication)

    // --------------- AppDelegate: applicationDidEnterBackground(UIApplication)
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, 
        // invalidate timers, and store enough application state information to 
        // restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is 
        // called instead of applicationWillTerminate: when the user quits.
        
        print("AppDelegate: Application Did Enter Background")
    }   //  end of applicationDidEnterBackground(UIApplication)

    // -------------- AppDelegate: applicationWillEnterForeground(UIApplication)
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive 
        // state; here you can undo many of the changes made on entering the background.
        
        print("AppDelegate: Application Will Enter Foreground")
    }   //  end of applicationWillEnterForeground(UIApplication)

    // ------------------ AppDelegate: applicationDidBecomeActive(UIApplication)
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the 
        // application was inactive. If the application was previously in the 
        // background, optionally refresh the user interface.
        print("AppDelegate: Application Did Become Active")
    }   //  end of applicationDidBecomeActive(UIApplication)

    // -------------------- AppDelegate: applicationWillTerminate(UIApplication)
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if 
        // appropriate. See also applicationDidEnterBackground:.
        print("Application Will Terminate")
    }   //  end of applicationWillTerminate(UIApplication)
    
    // -------------------------------------------------------------------------
    
}  //  end of class AppDelegate: UIViewController

