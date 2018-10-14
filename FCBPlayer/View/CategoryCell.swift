//
//  CategoryCell.swift
//  FCBPlayer
//
//  Created by Jmorillo on 14/10/2018.
//  Copyright © 2018 MorilloApps. All rights reserved.
//

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
