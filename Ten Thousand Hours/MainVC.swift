//
//  MainVC.swift
//  Ten Thousand Hours
//
//  Created by Felix Kramer on 10/4/17.
//  Copyright © 2017 Felix Kramer. All rights reserved.
//

import UIKit
//import CoreData
import CoreData

//pull the protocols needed for tables and for core data
class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource, NSFetchedResultsControllerDelegate {

    //create the fetched results controller, and include what data class to work with
    var controller: NSFetchedResultsController<Goal>!
    
    //create the tableview
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //insert the required table delegates
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    //Boilerplate code for Table View
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set the reuse identifier in the storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "GoalCell", for: indexPath) as! GoalCell
        configureCell(cell: cell, indexPath: indexPath as NSIndexPath)
        return cell
    }
    
    //note create the following dunction to pass all the goals into the configure cell item help in GoalCell.swift
    func configureCell(cell: GoalCell, indexPath: NSIndexPath) {
        let goal = controller.object(at: indexPath as IndexPath)
        cell.configureCell(item: goal)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //take sections out of the controller
        if let sections = controller.sections {
            let sectionInfo = sections[section]
            return sectionInfo.numberOfObjects
        }
        //if none, return 0
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //count sections from controller
        if let sections = controller.sections {
            return sections.count
        }
        //if none, return 0
        return 0
    }
    

    
    //Boilerplate code for Core Data



}

