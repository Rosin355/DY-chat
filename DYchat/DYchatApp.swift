//
//  DYchatApp.swift
//  DYchat
//
//  Created by Romesh Singhabahu on 15/06/24.
//

import SwiftUI

@main
struct DYchatApp: App {
    /*
     /// FOR IDENTIFY FONT SYSTEM NAME
     
    init() {
        for familyName in UIFont.familyNames {
            print(familyName)
            
            for fontName in UIFont.fontNames(forFamilyName: familyName) {
                print("-- \(fontName)")
            }
        }
    }
     */
    
    init() {
        let appear = UINavigationBarAppearance()

        let atters: [NSAttributedString.Key: Any] = [
            .font: UIFont(name: "VT323-Regular", size: 38)!
        ]
        
        appear.largeTitleTextAttributes = atters
        appear.titleTextAttributes = atters
        
        UINavigationBar.appearance().standardAppearance = appear
        UINavigationBar.appearance().compactAppearance = appear
        UINavigationBar.appearance().scrollEdgeAppearance = appear
    
     }
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
