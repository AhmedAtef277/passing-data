import UIKit

class SecondScreenUsingSegue: UIViewController {

    @IBOutlet weak var SecondTextField: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    var lbl = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = lbl
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let firstScreenObj = segue.destination as? FirstScreenUsingSegue{
            firstScreenObj.myData = SecondTextField.text ?? "It is nil"
        }
    }
 
}
