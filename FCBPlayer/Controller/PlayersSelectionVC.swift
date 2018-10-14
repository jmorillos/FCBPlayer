//
//  PlayersSelectionVC.swift
//  FCBPlayer
//
//  Created by Jmorillo on 14/10/2018.
//  Copyright © 2018 MorilloApps. All rights reserved.
//

import UIKit

class PlayersSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory: String!
    
    var players: [Player]!
    let data = DataSetPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        players = data.getPlayers(forCategoryName: selectedCategory)
        print(selectedCategory)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return players.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "playerCell", for: indexPath) as? PlayerCell {
            let player = players[indexPath.item]
            cell.configureCell(player: player)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let celldimension = (width / 2) - 15
        return CGSize(width: celldimension, height: celldimension)
    }
    
}
