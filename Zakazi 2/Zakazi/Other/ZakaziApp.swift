//
//  ZakaziApp.swift
//  Zakazi
//
//  Created by Petar Pavlovic on 25.1.24..
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore

let db = Firestore.firestore()

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}


@main

struct ZakaziApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
