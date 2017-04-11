//
//  FirstViewController.swift
//  TechKnights
//
//  Created by Fulton Garcia on 4/11/17.
//  Copyright © 2017 Fulton Garcia. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var itemTbl: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        itemTbl.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Default Item")
        cell.textLabel?.text = itemList.items[indexPath.row].name
        cell.detailTextLabel?.text = String(itemList.items[indexPath.row].quantity)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if(editingStyle == UITableViewCellEditingStyle.delete){
            itemList.items.remove(at: indexPath.row)
            itemTbl.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        itemTbl.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

