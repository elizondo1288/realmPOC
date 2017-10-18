//
//  MemberTableViewCell.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/18/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class MemberTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func customizeCell(_ member : Member) {
        idLabel.text = member.id
        nameLabel.text = "\(member.name) \(member.lastName)"
    }
}
