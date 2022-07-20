//
//  MainViewController.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class MainViewController: UITabBarController {
    
    private let persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        sendDataToViewControllers()
       
    }
    
    func sendDataToViewControllers() {
        guard let contactsVC = viewControllers?.first as? ContactsTableViewController else { return }
        guard let contactsWithDetailVC = viewControllers?.last as? ContactsWithDetailTableViewController else { return }
        
        contactsVC.contacts = persons
        contactsWithDetailVC.contacts = persons
    }
    
}
