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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let count = TeamManager.sharedInstance.returnAllTeams()?.count else { return 0}
        return count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "teamCell")
        let team = TeamManager.sharedInstance.teams[indexPath.row]
        cell.textLabel?.text = team.name
        let color  = team.color!
        
        DispatchQueue.main.async {
            cell.textLabel?.backgroundColor = .white
            cell.backgroundColor = UIColor(hexString: color)
        }
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
            let team = TeamManager.sharedInstance.teams[indexPath.row]
            TeamManager.sharedInstance.removeTeam(team)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
}
