//
//  tabBar2.swift
//  Passing Data
//
//  Created by mac on 12/02/2022.
//

import UIKit

class tabBar2: UIViewController {

    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(makeChange), name: Notification.Name("notifyAll"), object: nil)
    }
    @objc func makeChange() -> Void {
        lbl2.text = "Done!"
        lbl2.textColor = .blue
        lbl2.textAlignment = .center
    }
    deinit{
        
        NotificationCenter.default.removeObserver(self)
        
    }
    
    
    
    
    

   

}
