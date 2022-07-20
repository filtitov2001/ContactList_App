//
//  DetailContactViewController.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class DetailContactViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = contact.fullName
        
        numberLabel.text = contact.number
        emailLabel.text = contact.email
    }
}
