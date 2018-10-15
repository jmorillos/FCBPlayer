// FCBPlayer app by Juan Morillo
// Copyright © 2018 MorilloApps.

import UIKit

class PlayersSelectionVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedCategory: String!
    var players: [Player]!
    let data = DataSetPlayer()
    var playerToPass: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        players = data.getPlayers(forCategoryName: selectedCategory)
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        playerToPass = players[indexPath.item]
        performSegue(withIdentifier: "playerSelection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? PlayerDetailVC {
            detailsVC.selectPlayer = playerToPass
        }
    }
    
}
