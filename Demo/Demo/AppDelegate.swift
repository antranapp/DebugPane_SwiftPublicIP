//
// Copyright © 2022 An Tran. All rights reserved.
//

import Combine
import DebugPane
import DebugPane_SwiftPublicIP
import SwiftUI
import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    private var bag = Set<AnyCancellable>()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        
        DebugPane.start {
            SwiftPublicIPBlade()
        }
    
        return true
    }
}
