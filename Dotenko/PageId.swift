import SwiftUI

enum PageId: Int, JSONSerializable {
    
    case splash
    case top
//    case home
//    case rule
//    case rule_select
//    case battle_select
//    case room
//    case dtnkMatching
//    case dtnkMain
//    case dtnkResult
//    case gameresult
    
}

struct PageContent: View {
    let id: PageId
    var body: some View {
        return Group {
            switch id {
            case .splash:
                SplashView()
            case .top:
                TopView()
//            case .home:
//                HomeView()
//            case .rule:
//                GameRuleView()
//            case .rule_select:
//                GameResultView()
//            case .battle_select:
//                GameResultView()
//            case .room:
//                RoomView()
//            case .dtnkMatching:
//                MatchingView()
//            case .dtnkMain:
//                GameMain()
//            case .dtnkResult:
//                GameResultView()
//            case .gameresult:
//                GameResultView()
            }
        }
    }
}
