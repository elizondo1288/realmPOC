//
//  AddTeamViewController.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/18/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit

class AddTeamViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var teamColorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setRandomColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColor(_ sender: Any) {
        setRandomColor()
    }
    
    @IBAction func saveTeam(_ sender: Any) {
        
    }
    
    
}

extension AddTeamViewController {

    func setRandomColor() {
        let r = randomCGFloat()
        let g = randomCGFloat()
        let b = randomCGFloat()
        let color = UIColor(red: r, green: g, blue: b, alpha: 1)
        
        print(String(describing: color))
        DispatchQueue.main.async {
            self.teamColorView.backgroundColor = color
        }
    }
    
    func randomCGFloat() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
