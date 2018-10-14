//
//  PlayerDetailVC.swift
//  FCBPlayer
//
//  Created by Jmorillo on 14/10/2018.
//  Copyright © 2018 MorilloApps. All rights reserved.
//

import UIKit

class PlayerDetailVC: UIViewController {
    
    
    // MARK: - Propiedades
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var playerName: UILabel!
    @IBOutlet weak var informationPlayer: UILabel!
    
    var selectPlayer: Player!

    override func viewDidLoad() {
        super.viewDidLoad()
        playerImage.image = UIImage(named: selectPlayer.imageProfile)
        playerName.text = selectPlayer.largeName
        informationPlayer.text = selectPlayer.information
    }
   

}
