//
//  DataService.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class DataService {
    static let shared = DataService()
    
    private var names = ["Allan", "John", "Aaron", "Carl", "Steven", "Sharon", "Bruce", "Ted", "Nicola"]
    private var surnames = ["Isacson", "Pennyworth", "Jankin", "Murphy", "Butter", "Robertson", "Smith", "Dow", "Black"]
    private var emails = [
        "allan@mail.com",
        "john@mail.com",
        "aaron@mail.com",
        "carl@mail.com",
        "steven@mail.com",
        "sharon@mail.com",
        "bruce@mail.com",
        "ted@mail.com",
        "nicola@mail.com"
    ]
    private var numbers = [
        "+111111111111",
        "+222222222222",
        "+333333333333",
        "+444444444444",
        "+555555555555",
        "+666666666666",
        "+777777777777",
        "+888888888888",
        "+999999999999"
    ]
    
    
    private init() {}
    
    func getContacts() -> [Contact] {
        var contacts = [Contact]()
        
        for _ in 0 ... names.count - 1 {
            let randomName = names.remove(at: Int.random(in: 0 ... names.count - 1))
            let randomSurname = surnames.remove(at: Int.random(in: 0 ... surnames.count - 1))
            let randomNumber = numbers.remove(at: Int.random(in: 0 ... numbers.count - 1))
            let randomEmail = emails.remove(at: Int.random(in: 0 ... emails.count - 1))
            
            let contact = Contact(
                name: randomName,
                surname: randomSurname,
                number: randomNumber,
                email: randomEmail
            )
            contacts.append(contact)
        }
        
        
        return contacts
    }
}
