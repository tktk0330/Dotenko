import Foundation

struct Config {
    
    static var sample: String {
        #if DEBUG
        return ""
        #elseif RELEASE
        return ""
        #else
        return ""
        #endif
    }
}
