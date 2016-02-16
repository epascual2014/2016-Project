//
//  MainTableViewController.swift
//  Run With Me
//
//  Created by Edrick Pascual on 2/15/16.
//  Copyright © 2016 Edrick Pascual. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    var tableArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableArray = ["post 1","post 2","post 3"]
        
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            
            menuButton.action = Selector("revealToggle:")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }

        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableArray.count
        
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(tableArray[indexPath.row], forIndexPath: indexPath)
        
        cell.textLabel?.text = tableArray[indexPath.row]
        
        return cell
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


}
