//
//  PlayersSelectionVC.swift
//  FCBPlayer
//
//  Created by Jmorillo on 14/10/2018.
//  Copyright © 2018 MorilloApps. All rights reserved.
//

import UIKit

class PlayersSelectionVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        print(selectedCategory)
       
    }
    
}
