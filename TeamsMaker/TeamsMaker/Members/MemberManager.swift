//
//  MemberManager.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/13/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit
import RealmSwift

class MemberManager: NSObject {

    static let sharedInstance = MemberManager()
    var members : [Member] = [Member]()
    let realm = try! Realm()
    
    private override init() {}
    
    func addMember(_ member : Member) {
        
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
    
    func returnAllMembers() -> [Member]? {
        let membs = realm.objects(Member.self)
        members = Array(membs)
        return members
    }
    
    func removeMember(_ member : Member) {
        try! realm.write {
            realm.delete(member)
        }
    }
    
}
