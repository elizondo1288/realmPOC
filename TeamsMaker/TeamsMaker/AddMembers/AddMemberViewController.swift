//
//  AddMemberViewController.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/13/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class AddMemberViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var lastNameLabel: UITextField!
    @IBOutlet weak var idLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveMember(_ sender: Any) {
        
        guard let name = nameLabel.text else { return }
        guard let lastName = lastNameLabel.text else { return }
        guard let id = Int(idLabel.text!) else { return }
        
        let member = Member(name,lastName,NSNumber.init(value: id))
        MemberManager.sharedInstance.addMember(member)
        
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
}
