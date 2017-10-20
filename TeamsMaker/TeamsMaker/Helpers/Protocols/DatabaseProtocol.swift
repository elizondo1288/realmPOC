//
//  DatabaseProtocol.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/20/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import Foundation

protocol DatabaseProtocol {    
    func add(_ object : AnyObject)
    func returnAll() -> [AnyObject]
    func remove(_ object : AnyObject)
}
