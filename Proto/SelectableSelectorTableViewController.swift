//
//  SelectableSelectorTableViewController.swift
//  Proto
//
//  Created by Matt Long on 10/24/14.
//  Copyright (c) 2014 Skye Road Systems. All rights reserved.
//

import UIKit
import CoreData

class SelectableSelectorTableViewController: UITableViewController {

    var managedObjectContext:NSManagedObjectContext?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        var destinationViewController = segue.destinationViewController as MasterViewController
        
        var entityName = ""
        
        if segue.identifier == "ShowASelectablesSegue" {
            entityName = ASelectableMO.entityName()
        } else if segue.identifier == "ShowBSelectablesSegue" {
            entityName = BSelectableMO.entityName()
        } else if segue.identifier == "ShowCSelectablesSegue" {
            entityName = CSelectableMO.entityName()
        }
        
        var fetchRequest = NSFetchRequest(entityName: entityName)
        
        var results = self.managedObjectContext!.executeFetchRequest(fetchRequest, error:nil)
        
        if results != nil {
            destinationViewController.selectables = results! as [Selectable]
        }
    }
}
