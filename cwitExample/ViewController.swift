import UIKit

class ViewController: UIViewController {
    //Connections to storyboard
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!

    @IBOutlet var submitButton: UIButton!
    
    //variables
    @objc let segueIdentifer = "welcome"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Any setup code here before the view shows to the user
        
        //customize color for welcome label
        self.welcomeLabel.textColor = UIColor.red
        self.submitButton.setTitleColor(UIColor.red, for: UIControlState())

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // This function is called when the app is about to crash due ot Memory overload. Dismiss any resources that can be re-created here.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //this method is called during execution of a segue, before the next view loads. you can pass data etc.
        
        //here we take the text from our textfield and pass it to the WelcomeViewController's name variable
        if segue.identifier == self.segueIdentifer {
            //make sure this is the segue we were expecting..
            
            let welcomeVC = segue.destination as? WelcomeViewController
            welcomeVC!.name = self.nameTextField.text
            
        }
    }
    
}

