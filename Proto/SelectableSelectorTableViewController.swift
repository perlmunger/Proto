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

        let destinationViewController = segue.destinationViewController as! MasterViewController
        
        var entityName = ""
        
        if segue.identifier == "ShowASelectablesSegue" {
            entityName = ASelectableMO.entityName()
        } else if segue.identifier == "ShowBSelectablesSegue" {
            entityName = BSelectableMO.entityName()
        } else if segue.identifier == "ShowCSelectablesSegue" {
            entityName = CSelectableMO.entityName()
        }
        
        let fetchRequest = NSFetchRequest(entityName: entityName)
        
        let results = try? self.managedObjectContext!.executeFetchRequest(fetchRequest)
        
        if results != nil {
            destinationViewController.selectables = results! as! [Selectable]
        }
    }
}
