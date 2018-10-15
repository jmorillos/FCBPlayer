// FCBPlayer app by Juan Morillo
// Copyright © 2018 MorilloApps.

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
