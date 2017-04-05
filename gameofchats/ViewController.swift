//
//  ViewController.swift
//  gameofchats
//
//  Created by Harry Tennent on 05/04/2017.
//  Copyright © 2017 Harry Tennent. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }

}

