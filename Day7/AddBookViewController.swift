//
//  AddBookViewController.swift
//  Day7
//
//  Created by Jessica Mallian on 4/22/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import UIKit

class AddBookViewController: UIViewController {
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var authorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
        authorTextField.delegate = self
    }
    
    @IBAction func addBookButtonPressed(_ sender: UIButton) {
    }
    
    
    
}

extension AddBookViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
    
}
