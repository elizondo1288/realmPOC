//
//  HomeViewController.swift
//  TeamsMaker
//
//  Created by Esteban Elizondo on 10/12/17.
//  Copyright © 2017 Avantica Technologies. All rights reserved.
//

import UIKit
enum homeOptions {
    case addMember
    case createTeams
    case shuffleTeams
}

class HomeViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    let cell_optionCell = "optionCell"
    var menuOptions : [MenuOptions] = [MenuOptions]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuOptions.append(MenuOptions("Insert Member",.addMember))
        menuOptions.append(MenuOptions("Create Teams",.createTeams))
        menuOptions.append(MenuOptions("Make Teams",.shuffleTeams))
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func changeController(_ option : homeOptions){
        
        switch option {
        case .addMember:
            self.performSegue(withIdentifier: "addMemberSegue", sender: nil)
        case .createTeams:
            print("")
        case .shuffleTeams:
            print("")
        }
    }
    
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuOptions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cell_optionCell, for: indexPath) as! HomeOptionsCell
        cell.setMenuOption(menuOptions[(indexPath as NSIndexPath).item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let menuOption = menuOptions[(indexPath as NSIndexPath).item]
        changeController(menuOption.option!)
    }
}


