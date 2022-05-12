//
//  tabBar1.swift
//  Passing Data
//
//  Created by mac on 12/02/2022.
//

import UIKit

class tabBar1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func sendNotification(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("notifyAll"), object: nil)
    }
   
    

}
