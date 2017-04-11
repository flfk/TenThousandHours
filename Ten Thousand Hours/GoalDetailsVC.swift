//
//  GoalDetailsVC.swift
//  Ten Thousand Hours
//
//  Created by Felix Kramer on 12/4/17.
//  Copyright © 2017 Felix Kramer. All rights reserved.
//

import UIKit

class GoalDetailsVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //edit the back button item, so instead of "< Back" only "<" loads
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
