//
//  Book.swift
//  Books
//
//  Created by GO on 2018. 2. 1..
//  Copyright © 2018년 GOYAPP. All rights reserved.
//

import Foundation
import UIKit

class Book {
    var title:String
    var writer:String
    var coverImage:UIImage
    var description:String
    
    init(title:String, writer:String, coverImage:UIImage, description:String) {
        self.title = title
        self.writer = writer
        self.coverImage = coverImage
        self.description = description
    }
}
