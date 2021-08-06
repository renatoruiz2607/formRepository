//
//  ViewController.swift
//  formRepository
//
//  Created by Fleury on 04/08/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var CPFTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    func setup() {
        phoneTextField.delegate = self
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if let phone = phoneTextField.text {
            if CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: phone)) && phone.count == 11{
                phoneTextField.backgroundColor = UIColor.green
            } else {
                phoneTextField.backgroundColor = UIColor.clear
            }
        }
        return true
    }
}

