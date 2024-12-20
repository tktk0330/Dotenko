//
//  DotenkoApp.swift
//  Dotenko
//
//  Created by Takuma Shinoda on 2024/12/20.
//

import SwiftUI

@main
struct DotenkoApp: App {
    
    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
      }
    }
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var loading: LoadingState = appState.loading
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NaviWindow(state: appState.routing.baseNaviState)
                LoadingView(loading.loadingTasks)
            }
            .background(
                //basebackgroundが設定される
                Color.plusDarkGreen
                    .ignoresSafeArea(.all)
            )
        }
    }
}
