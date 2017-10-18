//
//  AddMemberViewController.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/13/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit
import RealmSwift

class AddMemberViewController: UIViewController {

    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var lastNameLabel: UITextField!
    @IBOutlet weak var idLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveMember(_ sender: Any) {
        
        guard let name = nameLabel.text else { return }
        guard let lastName = lastNameLabel.text else { return }
        guard let id = idLabel.text else { return }
        
        let member = Member(name,lastName,id)
        MemberManager.sharedInstance.addMember(member)
        
        DispatchQueue.main.async {
            _ = self.navigationController?.popViewController(animated: true)
        }
    }
}
