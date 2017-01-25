//
//  WifiViewController.swift
//  Wifi
//
//  Created by Henrique Valcanaia on 25/01/17.
//  Copyright © 2017 Henrique Valcanaia. All rights reserved.
//

import Foundation

class WifiViewController: ReachableViewController {
    
    internal var wifi: Bool? {
        set {
            self.wifi = newValue
        }
        
        get {
            return reachabilityStatus == .reachableViaWiFi
        }
    }
    
}
