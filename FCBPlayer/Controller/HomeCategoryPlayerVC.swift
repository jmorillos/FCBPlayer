//
//  HomeCategoryPlayerVC.swift
//  FCBPlayer
//
//  Created by Jmorillo on 13/10/2018.
//  Copyright © 2018 MorilloApps. All rights reserved.
//

import UIKit

class HomeCategoryPlayerVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    // MARK: - Propiedades
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - DataSet()
    let data = DataSetPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MAR: - Protocolos y Delegados
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell {
            cell.configureCell(category: data.categories[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }


}

