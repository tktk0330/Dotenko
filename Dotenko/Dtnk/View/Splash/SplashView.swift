/**
初期画面
 ・認証
 */
import SwiftUI

struct SplashView: View {
    
    @StateObject var splash: SplashState = appState.splash
    
    init() {
        SplashController().initSplashState()
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                
                Text("Splash")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                    .opacity(splash.alpha)
                    .position(x: UIScreen.main.bounds.width / 2, y: geo.size.height * 0.50)
                
                // TODO:
                Button(action: {
                    Router().pushBasePage(pageId: .top)
                }) {
                    Text("START")
                        .font(.system(size: 45))
                        .foregroundColor(Color.white)
                        .fontWeight(.bold)
                        .padding(5)
                }
                .position(x: UIScreen.main.bounds.width / 2, y:  geo.size.height * 0.80)
                
            }
            .onAppear {
                SplashController().onSplashAppear()
            }
        }
    }
}
