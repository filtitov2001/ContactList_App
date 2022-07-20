//
//  MainViewController.swift
//  ContactList_App
//
//  Created by Felix Titov on 7/20/22.
//  Copyright © 2022 by Felix Titov. All rights reserved.
//  


import UIKit

class MainViewController: UITabBarController {
    
    private let contacts = DataService.shared.getContacts()

    override func viewDidLoad() {
        super.viewDidLoad()

        if let viewControllers = viewControllers {
            for viewController in viewControllers {
                
                guard let navigationVC = viewController as? UINavigationController else { return }
                if let contactVC = navigationVC.topViewController as? ContactsTableViewController {
                    contactVC.contacts = contacts
                } else if let contactVC = navigationVC.topViewController as? ContactsDetailTableViewController {
                    contactVC.contacts = contacts
                }
                
            }
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
