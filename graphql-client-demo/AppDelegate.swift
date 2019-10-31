//
//  AppDelegate.swift
//  graphql-client-demo
//
//  Created by Lars Moesman on 16/12/2018.
//  Copyright © 2018 Lars Moesman. All rights reserved.
//

import UIKit
import Apollo

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var apolloClient: ApolloClient?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions
        launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Replace localhost with ip address of the graphql server
        let apolloURL = URL(string: "http://localhost:4000/graphql")
        apolloClient = ApolloClient(url: apolloURL!)
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }

}
