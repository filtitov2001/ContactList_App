//
//  ContactsWithDetailTableViewController.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class ContactsWithDetailTableViewController: UITableViewController {
    
    var contacts: [Person]!
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "second", for: indexPath)

        var contentView = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.section]
        
        switch indexPath.row {
        case 0:
            contentView.image = UIImage(systemName: "phone")
            contentView.text = contact.number
        default:
            contentView.image = UIImage(systemName: "tray")
            contentView.text = contact.email
        }
        
        cell.contentConfiguration = contentView

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
