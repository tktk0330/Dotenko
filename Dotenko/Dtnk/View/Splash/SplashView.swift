/**
 SplashView
 会社のロゴ的な物に変更
 
 裏で認証
 */
import SwiftUI

struct SplashView: View {
    
    @State private var userName: String = ""
    @State private var iconURL: String = ""
    @StateObject var splash: SplashState = appState.splash
    
    init() {
        SplashController().initSplashState()
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                // 広告用
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.3))
                    .shadow(color: .gray, radius: 10, x: 0, y: 5)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .position(x: UIScreen.main.bounds.width / 2, y: geo.size.height * 0.025)
                
                Text("IWM")
                    .font(.system(size: 100))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .bold()
                    .padding()
                    .opacity(splash.alpha)
                    .position(x: UIScreen.main.bounds.width / 2, y: geo.size.height * 0.50)
                
            }
            .onAppear {
                SplashController().onSplashAppear()
            }
        }
    }
}
