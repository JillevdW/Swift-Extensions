import Foundation
import StoreKit

extension UserDefaults {
    
    func isFirstLaunch() -> Bool {
        guard let _ = UserDefaults.standard.object(forKey: "firstLaunchDate") else {
            UserDefaults.standard.set(Int(Date().timeIntervalSince1970), forKey: "firstLaunchDate")
            return true
        }
        return false
    }
    
    func askForStoreReviewAfter(days: Int) {
        guard let firstDate = UserDefaults.standard.object(forKey: "firstLaunchDate") as? Int else {return}
        if Int(Date().timeIntervalSince1970) - firstDate > days * 86400 {
            if #available( iOS 10.3,*) {
                SKStoreReviewController.requestReview()
            }
        }
    }
}
