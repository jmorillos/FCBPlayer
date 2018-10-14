//
//  PlayerCell.swift
//  FCBPlayer
//
//  Created by Jmorillo on 14/10/2018.
//  Copyright © 2018 MorilloApps. All rights reserved.
//

import UIKit

class PlayerCell: UICollectionViewCell {
    
    @IBOutlet weak var playerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        playerImage.layer.cornerRadius = 10
    }
    
    func configureCell(player: Player) {
        playerImage.image = UIImage(named: player.name)
    }
    
}
