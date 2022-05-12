//
//  tabBar3.swift
//  Passing Data
//
//  Created by mac on 12/02/2022.
//

import UIKit

class tabBar3: UIViewController {

    @IBOutlet weak var lbl3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(makeChange), name: Notification.Name("notifyAll"), object: nil)
    }
    @objc func makeChange() -> Void {
        lbl3.text = "Done!"
        lbl3.textColor = .red
        lbl3.textAlignment = .center
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
   
}
