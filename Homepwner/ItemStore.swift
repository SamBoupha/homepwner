//
//  ItemStore.swift
//  Homepwner
//
//  Created by Samaykham on 10/2/16.
//  Copyright © 2016 Samaykham. All rights reserved.
//

import UIKit

class ItemStore {
    
    var allItems = [Item]()
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        
        allItems.append(newItem)
        
        return newItem
    }
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
}
