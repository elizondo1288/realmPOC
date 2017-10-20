//
//  TeamManager.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/18/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit
import RealmSwift

class TeamManager: DatabaseProtocol {
    
    static let shared = TeamManager()
    var teams = [Team]()
    let realm = try! Realm()

    private init() {}
    
    func add(_ object : AnyObject) {
        let team = object as! Team
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
    
    func returnAll() -> [AnyObject] {
        let tms = realm.objects(Team.self)
        teams = Array(tms)
        return teams
    }
    
    func remove(_ object: AnyObject) {
        let team = object as! Team
        try! realm.write {
            realm.delete(team)
        }
    }
}
