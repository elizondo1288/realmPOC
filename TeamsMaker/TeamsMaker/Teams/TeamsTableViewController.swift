//
//  TeamsTableViewController.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/18/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {

    
    var fakeAmmount = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.clearsSelectionOnViewWillAppear = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return fakeAmmount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "teamCell")
        cell.textLabel?.text = "Ejemplo"
        cell.detailTextLabel?.text = "Subtitle"
        return cell
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            fakeAmmount = fakeAmmount - 1
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
