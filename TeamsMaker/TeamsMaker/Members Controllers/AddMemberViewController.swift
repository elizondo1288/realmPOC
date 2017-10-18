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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let members = MemberManager.sharedInstance.returnAllMembers() else { return }
        
        for member in members {
            print(member.name)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveMember(_ sender: Any) {
        
        guard let name = nameLabel.text else { return }
        guard let lastName = lastNameLabel.text else { return }
        guard let id = idLabel.text else { return }
        
        let member = Member(name,lastName,id)
        MemberManager.sharedInstance.addMember(member)
        
        DispatchQueue.main.async {
            self.dismiss(animated: true, completion: nil)
        }
        
    }
}
