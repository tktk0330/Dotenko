import SwiftUI

struct TopView: View {
    
    var body: some View {
        GeometryReader { geo in
            
            Text("DOTENKO")
                .font(.system(size: 65))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .padding(5)
                .position(x: UIScreen.main.bounds.width / 2, y:  geo.size.height * 0.20)
            

//            Image(ImageName.Top.topicon.rawValue)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 300)
//                .position(x: UIScreen.main.bounds.width / 2, y:  geo.size.height * 0.50)

            Button(action: {
                TopController().onTapPlay()
            }) {
                Text("START")
                    .font(.system(size: 45))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .padding(5)
            }
            .position(x: UIScreen.main.bounds.width / 2, y:  geo.size.height * 0.80)
//            .blinkEffect(animating: true)
        }
    }
}
