//
//  Team.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import Foundation
import RealmSwift

class Team: Object {
    @objc dynamic var name : String?
    @objc dynamic var color: String?
    let members = List<Member>()
    
    convenience init(_ name: String, _ color: String, membs: [Member]) {
        self.init()
        self.name = name
        self.color = color
        self.members.append(objectsIn: membs)
    }
    
    override static func primaryKey() -> String? {
        return "name"
    }
}
