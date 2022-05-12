//
//  SecondViewController.swift
//  Passing Data
//
//  Created by mac on 07/02/2022.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    var userData : data?
    override func viewDidLoad() {
        super.viewDidLoad()
        if let user = userData{
            lbl.text = "\(user.name) \(user.age) \(user.dateOfBirth)"
            
        }

        // Do any additional setup after loading the view.
    }
    
    

   
}
struct data{
    var name : String
    var age : Int
    var dateOfBirth : String
    
}
