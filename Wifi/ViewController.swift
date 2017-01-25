//
//  ViewController.swift
//  Wifi
//
//  Created by Henrique Valcanaia on 25/01/17.
//  Copyright © 2017 Henrique Valcanaia. All rights reserved.
//

import UIKit

class ViewController: WifiViewController {
    
    @IBAction func didTapCheckButton(_ sender: Any) {
        print("Is on wifi? \(self.wifi)")
    }
    
    
}

