//
//  MenuOptions.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class MenuOptions: NSObject {
    
    var name : String?
    var option : homeOptions?
    
    init(_ name: String, _ option : homeOptions) {
        self.name = name
        self.option = option
    }
}
