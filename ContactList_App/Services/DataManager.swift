//
//  DataService.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import Foundation

class DataManager {
    static let shared = DataManager()
    
    let names = [
        "Allan",
        "John",
        "Aaron",
        "Carl",
        "Steven",
        "Sharon",
        "Bruce",
        "Ted",
        "Nicola"
    ]
    
    let surnames = [
        "Isacson",
        "Pennyworth",
        "Jankin",
        "Murphy",
        "Butter",
        "Robertson",
        "Smith",
        "Dow",
        "Black"
    ]
    
    let emails = [
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
    let numbers = [
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

}
