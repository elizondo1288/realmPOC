//
//  TeamManager.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/18/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit
import RealmSwift

class TeamManager: NSObject {
    
    static let sharedInstance = TeamManager()
    var teams = [Team]()
    let realm = try! Realm()

    private override init() {}
    
    func addTeam(_ team : Team) {
        
        let newList = teams.filter { (tm) -> Bool in
            return team.name == tm.name
        }
        
        if newList.count > 0 {
            print("Team ya existe")
        } else {
            try! realm.write {
                realm.add(team)
            }
        }
    }
    
    func returnAllTeams() -> [Team]? {
        let tms = realm.objects(Team.self)
        teams = Array(tms)
        return teams
    }
    
    func removeTeam(_ team : Team) {
        try! realm.write {
            realm.delete(team)
        }
    }
}
