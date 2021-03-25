//
//  ViewController.swift
//  todolist
//
//  Created by Rebecca Markovsky on 3/2/21.
//

import UIKit
var items: [String] = []
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    
    //variable table view
    
    override func viewDidAppear(_ animated: Bool) {
        //tableview variable .reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            items.remove(at: indexPath.row)
            //tableview variable.reloadData()
        }
    }

}

