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
    
    //Sets up the amount of rows to display
    //we return the the length of the array
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemList.items.count
    }
    
    //Creates the cells in the tableviews
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Default Item")
        
        //sets the cell lable values to the name and the quantity
        cell.textLabel?.text = itemList.items[indexPath.row].name
        cell.detailTextLabel?.text = String(itemList.items[indexPath.row].quantity)
        
        return cell
    }
    
    //enable the deletion of cells with a swipe
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        //Remove the item from the array that is being selected for deletion
        if(editingStyle == UITableViewCellEditingStyle.delete){
            itemList.items.remove(at: indexPath.row)
            
            //reload the date for the tableview
            itemTbl.reloadData()
        }
    }
    
    //Reload the date in the table when the view appears again
    //(when switching back from views)
    override func viewWillAppear(_ animated: Bool) {
        itemTbl.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

