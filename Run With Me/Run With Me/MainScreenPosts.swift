//
//  MainScreenPosts.swift
//  Run With Me
//
//  Created by Edrick Pascual on 2/15/16.
//  Copyright © 2016 Edrick Pascual. All rights reserved.
//

import Foundation

class MainScreenPosts: UITableViewController {

    var tableArray = [String]()
    
    override func viewDidLoad() {
        tableArray = ["Test one","Test two"]
        
        
//        if self.revealViewController() != nil {
//            menuButton.target = self.revealViewController()
//            
//            // Will call selector located in SWReveal File
//            menuButton.action = Selector("revealToggle:")
//            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
//            
//        }
//        
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return tableArray.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath)
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
        
    }
    
}
