//
//  ViewController.swift
//  Passing Data
//
//  Created by mac on 07/02/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passedText: UITextField!
    @IBOutlet weak var moveBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func passingData(_ sender: Any) {
        let secondObj = storyboard?.instantiateViewController(withIdentifier: "secondID") as! SecondViewController
        secondObj.userData = data(name: "Ahmed", age: 20, dateOfBirth: "10-2-2002")
        secondObj.modalPresentationStyle = .fullScreen
       // present(secondObj, animated: true, completion: nil) //without navigation
        navigationController?.pushViewController(secondObj, animated: true) //with navigation
        
        
    }
    
}

