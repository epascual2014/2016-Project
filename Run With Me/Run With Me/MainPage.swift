//
//  MainPage.swift
//  Run With Me
//
//  Created by Edrick Pascual on 2/15/16.
//  Copyright © 2016 Edrick Pascual. All rights reserved.
//

import Foundation

class MainPage: UITableViewController {
    
        var tableArray = [String]()
    
    override func viewDidLoad() {
    
        tableArray = ["Test1", "Test2"]
    
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel!.text = tableArray[indexPath.row]
        
        return cell
        
    }
    
}
