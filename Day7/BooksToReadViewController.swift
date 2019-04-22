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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @IBAction func addNewItem(_ sender: UIBarButtonItem) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "AddBookViewController") as! AddBookViewController
        vc.addBookDelegate = self 
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row].title
        cell.detailTextLabel?.text = data[indexPath.row].author
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
}

extension BooksToReadViewController: canAddBookToDataSource {
    
    func add(book: Book) {
        data.append(book)
    }
}

