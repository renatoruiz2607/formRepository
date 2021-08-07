//
//  ViewController.swift
//  formRepository
//
//  Created by Fleury on 04/08/21.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var CPFTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var buttonValidar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
        if !isValidEmail() {
            print ("Email invalido")
        }
    }
    
    func isValidEmail() -> Bool{
        if !emailTextField.hasText {
            return false
        }
        
        let emailString : String = emailTextField.text!
        if !(emailString.contains("@")) {
            return false
        }

        return true
    }
}
