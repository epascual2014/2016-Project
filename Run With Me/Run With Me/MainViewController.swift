//
//  MainViewController.swift
//  Run With Me
//
//  Created by Edrick Pascual on 2/15/16.
//  Copyright (c) 2016 Edrick Pascual. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var sideButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if self.revealViewController() != nil {
            sideButton.target = self.revealViewController()
            
            sideButton.action = Selector("revealToggle:")
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
