//
//  ViewController.swift
//  SpaceXL
//
//  Created by Tushar Bohara on 12/05/2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //properties
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var forgotPassword: UIButton!
    
    
    //actions
    @IBAction func bgOutside(_ sender: UITapGestureRecognizer) {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
    }
    
    
    @IBAction func btnLogin(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usernameField.delegate = self
        usernameField.tag = 0
        passwordField.delegate = self
        passwordField.tag = 0
        forgotPassword.titleLabel?.underline()
        
        
    }
    
    func textFieldShouldReturn( _ textField: UITextField) -> Bool {   //delegate method
//        if let passwordField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
//            passwordField.becomeFirstResponder()
//        } else {
//            // Not found, so remove keyboard.
//            usernameField.resignFirstResponder()
//        }
//        // Do not add a line break
//        return false
        if textField == usernameField {
            textField.resignFirstResponder()
            passwordField.becomeFirstResponder()

        } else if textField == passwordField {
            textField.resignFirstResponder()

        }
        return true
    }

}


extension UILabel {
    func underline() {
        if let textUnwrapped = self.text {
            let underlineAttribute = [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue]
            let underlineAttributedString = NSAttributedString(string: textUnwrapped, attributes: underlineAttribute)
            
            self.attributedText = underlineAttributedString
        }
    }
}

