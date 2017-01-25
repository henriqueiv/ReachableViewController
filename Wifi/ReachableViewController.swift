//
//  ReachableViewController.swift
//  Wifi
//
//  Created by Henrique Valcanaia on 25/01/17.
//  Copyright © 2017 Henrique Valcanaia. All rights reserved.
//

import Foundation
import ReachabilitySwift

class ReachableViewController: UIViewController {
    
    internal var reachabilityStatus: Reachability.NetworkStatus = .notReachable {
        didSet {
            print(reachabilityStatus.description)
        }
    }
    private var reachability = Reachability()
    
    override func viewDidLoad() {
        NotificationCenter.default.addObserver(self, selector: #selector(ReachableViewController.reachabilityChanged),name: ReachabilityChangedNotification, object: reachability)
        verifyConection()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    private func verifyConection() {
        do {
            try reachability?.startNotifier()
        } catch {
            print("could not start reachability notifier")
        }
        
    }
    
    @objc private func reachabilityChanged(note: NSNotification) {
        let reachability = note.object as! Reachability
        reachabilityStatus = reachability.currentReachabilityStatus
    }
    
}
