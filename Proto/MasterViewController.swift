//
//  MasterViewController.swift
//  Proto
//
//  Created by Matt Long on 10/24/14.
//  Copyright (c) 2014 Skye Road Systems. All rights reserved.
//

import UIKit
import CoreData

class MasterViewController: UITableViewController, NSFetchedResultsControllerDelegate {

    var managedObjectContext: NSManagedObjectContext? = nil

    var selectables:[Selectable] = []

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectables.sort({ $0.displayName < $1.displayName })
    }

    // MARK: - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail" {
            if let indexPath = self.tableView.indexPathForSelectedRow() {
            let object = self.selectables[indexPath.row] as Selectable
            (segue.destinationViewController as DetailViewController).detailItem = object
            }
        }
    }

    // MARK: - Table View

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selectables.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        self.configureCell(cell, atIndexPath: indexPath)
        return cell
    }

    func configureCell(cell: UITableViewCell, atIndexPath indexPath: NSIndexPath) {
        let object = self.selectables[indexPath.row] as Selectable
        cell.textLabel.text = object.displayName
    }

}

