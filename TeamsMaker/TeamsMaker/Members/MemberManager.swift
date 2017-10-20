//
//  MemberManager.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/13/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit
import RealmSwift

class MemberManager: DatabaseProtocol {
    static let shared = MemberManager()
    var members : [Member] = [Member]()
    let realm = try! Realm()
    
    private init() {}
    
    func add(_ object: AnyObject) {
        let member = object as! Member
        let newList = members.filter { (mem) -> Bool in
            return member.id == mem.id
        }
        
        if newList.count > 0 {
            print("Miembro ya existe")
        } else {
            try! realm.write {
                realm.add(member)
            }
        }
    }
    
    func returnAll() -> [AnyObject] {
        let membs = realm.objects(Member.self)
        members = Array(membs)
        return members
    }
    
    func remove(_ object: AnyObject) {
        let member = object as! Member
        try! realm.write {
            realm.delete(member)
        }
    }
}
