//
//  FirstScreenUsingProtocolAndDelegate.swift
//  Passing Data
//
//  Created by mac on 11/02/2022.
//

import UIKit


class FirstScreenUsingProtocolAndDelegate: UIViewController , SendData {
    @IBOutlet weak var txtField: UITextField!
    @IBOutlet weak var lblData: UILabel!
    func sending(first: String, second: String, gender: String) {
        lblData.text = "\(first) \(second) \(gender)"
        
    }
    

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   

    @IBAction func toSecondBtn(_ sender: Any) {
        let secondObj = storyboard?.instantiateViewController(withIdentifier: "SecondScreen") as! SecondScreenUsingProtocolAndDelegate
        secondObj.delegate = self
        present(secondObj, animated: true, completion: nil)
    }
}
