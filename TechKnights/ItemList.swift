//
//  ItemList.swift
//  TechKnights
//
//  Created by Fulton Garcia on 4/11/17.
//  Copyright © 2017 Fulton Garcia. All rights reserved.
//

import UIKit

var itemList: ItemList = ItemList()

struct item{
    var name = "name"
    var quantity = 0
}

class ItemList: NSObject {
    var items = [item]()
    
    func addItem(name: String, quantity: Int){
        items.append(item(name: name, quantity: quantity))
    }

}


