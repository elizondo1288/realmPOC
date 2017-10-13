//
//  MemberManager.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/13/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class MemberManager: NSObject {

    static let sharedInstance = MemberManager()
    var members : [Member] = [Member]()

    private override init() {}
    
    func addMember(_ member : Member) {
        
        let newList = members.filter { (mem) -> Bool in
            return member.id == mem.id
        }
        
        if newList.count > 0 {
            print("error ya existe")
        } else {
            members.append(member)
            print(members)
        }
    }
    
    func removeMember(_ member : Member) {
        
        members = members.filter { (mem) -> Bool in
            return member.id != mem.id
        }
    }
    
}
