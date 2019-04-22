//
//  AddBookViewController.swift
//  Day7
//
//  Created by Jessica Mallian on 4/22/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import UIKit

protocol canAddBookToDataSource {
    func add(book: Book) -> Void
}

class AddBookViewController: UIViewController {
    @IBOutlet var titleTextField: UITextField!
    @IBOutlet var authorTextField: UITextField!
    var addBookDelegate: canAddBookToDataSource? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleTextField.delegate = self
        authorTextField.delegate = self
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.endEditing(true) //convenient way to dismiss the keyboard without having to know which textField is the first responder
    }
    
    @IBAction func addBookButtonPressed(_ sender: UIButton) {
        guard titleTextField.hasText, authorTextField.hasText, let delegate = addBookDelegate else {
            return
        }
        delegate.add(book: Book(author: authorTextField.text!, title: titleTextField.text!))
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backgroundTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    
}

extension AddBookViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true 
    }
    
}
