//
//  ContactsTableViewController.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contacts: [Person]!


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "first", for: indexPath)
        let contact = contacts[indexPath.row]

        var contentView = cell.defaultContentConfiguration()
        contentView.text = contact.fullName
        
        cell.contentConfiguration = contentView

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        guard let detailVC = segue.destination as? DetailContactViewController else { return }
        
        detailVC.contact = contacts[indexPath.row]
    }
}
