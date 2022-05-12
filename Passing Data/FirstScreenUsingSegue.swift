//
//  FirstScreenUsingSegue.swift
//  Passing Data
//
//  Created by mac on 08/02/2022.
//

import UIKit

class FirstScreenUsingSegue: UIViewController {

    @IBOutlet weak var FirstScreenLabel: UILabel!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var textField: UITextField!
    var myData = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        FirstScreenLabel.backgroundColor = .lightGray

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let SecondScreenObj = segue.destination as? SecondScreenUsingSegue{
            SecondScreenObj.lbl = textField.text ?? "nil"
            
        }
    }
    
    @IBAction func unWindTo1(sender : UIStoryboardSegue) {
        FirstScreenLabel.text = myData
        
    }
    
    
    
    

}
