//
//  HomeOptionsCell.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class HomeOptionsCell: UICollectionViewCell {
    
    @IBOutlet weak var optionNameLabel: UILabel!
    var option : homeOptions?
    var name: String = "" {
        didSet {
            optionNameLabel.text = name
        }
    }
    
    func setMenuOption(_ menuOption: MenuOptions){
        option = menuOption.option
        name = menuOption.name ?? ""
    }
}
