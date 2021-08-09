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
        nameTextField.delegate = self
        CPFTextField.delegate = self
        phoneTextField.delegate = self
        emailTextField.delegate = self
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if let name = nameTextField.text {
            let letterCharacters = CharacterSet.letters
            if (name.rangeOfCharacter(from: letterCharacters) != nil) && name.count >= 3{
                nameTextField.backgroundColor = UIColor.systemGreen
            } else if name == "" {
                nameTextField.backgroundColor = UIColor.clear
            } else {
                nameTextField.backgroundColor = UIColor.systemRed
            }
        }
        if let cpf = CPFTextField.text {
            if CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: cpf)) && cpf.count == 11 {
                CPFTextField.backgroundColor = UIColor.systemGreen
            } else if cpf == "" {
                CPFTextField.backgroundColor = UIColor.clear
            } else {
                CPFTextField.backgroundColor = UIColor.systemRed
            }
        }
        if let phone = phoneTextField.text {
            if CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: phone)) && phone.count == 11 {
                phoneTextField.backgroundColor = UIColor.systemGreen
            } else if phone == "" {
                phoneTextField.backgroundColor = UIColor.clear
            } else {
                phoneTextField.backgroundColor = UIColor.systemRed
            }
        }
        if let email = emailTextField.text {
            if email.contains("@") && email.count >= 8 {
                emailTextField.backgroundColor = UIColor.systemGreen
            } else if email == "" {
                emailTextField.backgroundColor = UIColor.clear
            } else {
                emailTextField.backgroundColor = UIColor.systemRed
            }
        }
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if let name = nameTextField.text {
            if name == "" {
                nameTextField.backgroundColor = UIColor.clear
            }
        }
        if let phone = phoneTextField.text {
            if phone == "" {
                phoneTextField.backgroundColor = UIColor.clear
            }
        }
        if let cpf = CPFTextField.text {
            if cpf == "" {
                CPFTextField.backgroundColor = UIColor.clear
            }
        }
        if let email = emailTextField.text {
            if email == "" {
                emailTextField.backgroundColor = UIColor.clear
            }
        }
        return true
    }
}

