//
//  ViewController.swift
//  MyPlace_TableView
//
//  Created by Сергей Громов on 24.11.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let restaurant = ["Taiga", "Turist", "Шашлыкоф"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - UITableViewDelegate, UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurant[indexPath.row]
        cell.backgroundColor = UIColor.clear
        cell.imageView?.image = UIImage(named: "car1")
        cell.focusStyle = .custom
        cell.isEditing = true
        cell.setEditing(true, animated: true)
   
        return cell
    }
    

}

