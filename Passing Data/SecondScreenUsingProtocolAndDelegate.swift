//
//  SecondScreenUsingProtocolAndDelegate.swift
//  Passing Data
//
//  Created by mac on 11/02/2022.
//

import UIKit
protocol SendData{
    func sending(first : String , second : String , gender : String)
}

class SecondScreenUsingProtocolAndDelegate: UIViewController {
    @IBOutlet var displayLabel: UILabel!
    @IBOutlet weak var secondTF: UITextField!
    @IBOutlet weak var FirstTF: UITextField!
    @IBOutlet weak var thirdTF: UITextField!
    var delegate : SendData?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func toFirstBtn(_ sender: Any) {
        delegate?.sending(first: FirstTF.text ?? "nil", second: secondTF.text ?? "nil", gender: thirdTF.text ?? "nil")
        dismiss(animated: true, completion: nil)
    }
    
}
