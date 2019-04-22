//
//  Book.swift
//  Day7
//
//  Created by Jessica Mallian on 4/22/19.
//  Copyright © 2019 Jessica Mallian. All rights reserved.
//

import Foundation

class Book {
    var author: String
    var title: String
    var id: String
    
    init(author: String, title: String) {
        self.author = author
        self.title = title
        id = UUID().uuidString
    }
}
