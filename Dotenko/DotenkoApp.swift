import SwiftUI

@main
struct DotenkoApp: App {
    
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var loading: LoadingState = appState.loading
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NaviWindow(state: appState.routing.baseNaviState)
                LoadingView(loading.loadingTasks)
                
                // admob
                BunnerView()
            }
            .background(
                //basebackgroundが設定される
                Color.plusDarkGreen
                    .ignoresSafeArea(.all)
            )
        }
    }
}
