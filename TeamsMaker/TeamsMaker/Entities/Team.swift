//
//  Team.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class Team: NSObject {
    fileprivate var name : String?
    fileprivate var color: UIColor?
    fileprivate var members: [Member]?
    
    init(_ name: String, _ color: UIColor, members: [Member]) {
        self.name = name
        self.color = color
        self.members = members
    }
}
