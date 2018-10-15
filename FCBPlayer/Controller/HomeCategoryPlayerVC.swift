// FCBPlayer app by Juan Morillo
// Copyright © 2018 MorilloApps.

import UIKit

class HomeCategoryPlayerVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    // MARK: - Propiedades
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - DataSet()
    let data = DataSetPlayer()
    
    var categoryToPass: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - Protocolos y Delegados
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

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].name
        performSegue(withIdentifier: "toPlayersSelections", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let playersVC = segue.destination as? PlayersSelectionVC {
            playersVC.selectedCategory = categoryToPass
        }
    }

}

