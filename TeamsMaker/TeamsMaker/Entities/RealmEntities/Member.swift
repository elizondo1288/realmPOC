//
//  Member.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import Foundation
import RealmSwift

class Member: Object {

    @objc dynamic var name = ""
    @objc dynamic var lastName = ""
    @objc dynamic var id = "0"
    
    convenience init(_ name : String, _ lastName: String, _ id : String) {
        self.init()
        self.name = name
        self.lastName = lastName
        self.id = id
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
