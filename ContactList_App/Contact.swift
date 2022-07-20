//
//  Contact.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

struct Contact {
    let name: String
    let surname: String
    
    let number: String
    let email: String
    
    var fullName: String {
        name + " " + surname
    }
}
