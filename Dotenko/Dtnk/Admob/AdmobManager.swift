import SwiftUI
import GoogleMobileAds

// バナー広告
struct BunnerView: View {
    @EnvironmentObject private var sceneDelegate: MySceneDelegate

    var body: some View {
        VStack {
            Spacer()
            
            if let vc = sceneDelegate.myWindow?.rootViewController {
                AdMobBannerView(viewController: vc, windowScene: sceneDelegate.windowScene)
                    .frame(maxWidth: .infinity, maxHeight: 60)
            }
        }
    }
}

struct AdMobBannerView: UIViewRepresentable {
    let viewController: UIViewController
    let windowScene: UIWindowScene?
                
    func makeCoordinator() -> Coordinator {
        .init()
    }
    
    func makeUIView(context: Context) -> GADBannerView {
        let bannerView = GADBannerView(adSize: GADAdSizeBanner)
        bannerView.delegate = context.coordinator
        bannerView.rootViewController = viewController
        bannerView.adUnitID = Config.bunnerID
        let request = GADRequest()
        request.scene = windowScene
        bannerView.load(request)
        return bannerView
    }
    
    func updateUIView(_ bannerView: GADBannerView, context: Context) {
    }
        
    class Coordinator: NSObject, GADBannerViewDelegate {
        func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
        }
    }
}

class MySceneDelegate: NSObject, UIWindowSceneDelegate, ObservableObject {
    var windowScene: UIWindowScene?
    var myWindow: UIWindow? {
        windowScene?.keyWindow
    }

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        windowScene = scene as? UIWindowScene
    }
}

extension AppDelegate {
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(
            name: nil,
            sessionRole: connectingSceneSession.role)
        if connectingSceneSession.role == .windowApplication {
            configuration.delegateClass = MySceneDelegate.self
        }
        return configuration
    }
}
