// FCBPlayer app by Juan Morillo
// Copyright © 2018 MorilloApps.

import UIKit

class CategoryCell: UITableViewCell {
    
    // MARK: - Propiedades
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImg.layer.cornerRadius = 10
    }
    // MARK: Función para personalizar la celda.
    func configureCell(category: PlayerCategory) {
        categoryImg.image = UIImage(named: category.imageName)
        categoryName.text = category.name
    }
    
}
