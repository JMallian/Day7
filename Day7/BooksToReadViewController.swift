//
//  ViewController.swift
//  Day7
//
//  Created by Jessica Mallian on 4/22/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import UIKit

class BooksToReadViewController: UITableViewController {
    var data: [Book]! 

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNewItem(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddBookViewController") as! AddBookViewController
        navigationController?.pushViewController(vc, animated: true)
    }
}

