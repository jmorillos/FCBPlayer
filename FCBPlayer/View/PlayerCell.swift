// FCBPlayer app by Juan Morillo
// Copyright © 2018 MorilloApps.

import UIKit

class PlayerCell: UICollectionViewCell {
    
    @IBOutlet weak var playerImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        playerImage.layer.cornerRadius = 10
    }
    
    func configureCell(player: Player) {
        playerImage.image = UIImage(named: player.imageProfile)
    }
    
}
