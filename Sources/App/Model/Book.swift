//
//  Book.swift
//  App
//
//  Created by WY on 2019/8/13.
//

import Vapor
final class Book {
    var title : String
    var pages : Int
    init(title:String = "no name" , pages : Int = 0) {
        self.title = title
        self.pages = pages
    }
    
}
extension Book : Content{
    
}
