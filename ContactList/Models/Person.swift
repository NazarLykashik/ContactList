//
//  Person.swift
//  ContactList
//
//  Created by Nazar Lykashik on 6.11.22.
//

import Foundation

struct Person{
    var name: String
    var phone: String
    var surname: String?
    var imageData: Data?
    private(set) var date: Date?
    
    init(name: String, phone: String, imageData: Data? = nil){
        self.name = name
        self.phone = phone
        self.imageData = imageData
        date = Date()
    }
    init(name: String, surname: String, phone: String, imageData: Data? = nil){
        self.name = name
        self.surname = surname
        self.phone = phone
        self.imageData = imageData
        date = Date()
    }
}
