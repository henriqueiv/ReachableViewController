//
//  ViewController.swift
//  Wifi
//
//  Created by Henrique Valcanaia on 25/01/17.
//  Copyright © 2017 Henrique Valcanaia. All rights reserved.
//

import ReachabilitySwift
import UIKit

class ViewController: WifiViewController {
    
    override var reachabilityStatus: Reachability.NetworkStatus {
        didSet {
            switch self.reachabilityStatus {
            case .notReachable:
                image.image = UIImage(named: "noconnection")
            case .reachableViaWiFi:
                image.image = UIImage(named: "wifi")
            case .reachableViaWWAN:
                image.image = UIImage(named: "cellular")
            }
        }
    }
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func didTapCheckButton(_ sender: Any) {
        print("Is on wifi? \(wifi ?? false)")
    }
    
    
}

