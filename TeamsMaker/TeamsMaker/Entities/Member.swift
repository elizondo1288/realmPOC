//
//  Member.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class Member: NSObject {

    var name : String?
    var lastName : String?
    var id : NSNumber?
    
    init(_ name : String, _ lastName: String, _ id : NSNumber) {
        super.init()
        self.name = name
        self.lastName = lastName
        self.id = id
    }
}
