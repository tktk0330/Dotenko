import SwiftUI
import Foundation

final class LoadingState: ObservableObject {
    @Published var loadingTasks: [LoadingTask]
    
    init(loadingTasks: [LoadingTask] = []) {
        self.loadingTasks = loadingTasks
    }
}

extension LoadingState {
    func updateLoading(isLoading: Bool) {
        self.loadingTasks = loadingTasks
    }
}

enum LoadingTask: Int, JSONSerializable {
    case apiNetworking
}

struct LoadingView: View {
    let tasks: [LoadingTask]
    init(_ tasks: [LoadingTask]) {
        self.tasks = tasks
    }
    
    var body: some View {
        ZStack {
            if tasks.isEmpty {
                EmptyView()
            } else {
                ProgressView("Now Loading...")
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .frame(width: 160, height: 80)
                    .foregroundColor(.white)
                    .background(Color.plusAutoBlack.opacity(0.5))
                    .cornerRadius(12)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(edges: .all)
    }
}
