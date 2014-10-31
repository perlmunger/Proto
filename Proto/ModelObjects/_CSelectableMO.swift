// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CSelectableMO.swift instead.

import CoreData

enum CSelectableMOAttributes: String {
    case cname = "cname"
}

@objc
class _CSelectableMO: NSManagedObject {

    // MARK: - Class methods

    class func entityName () -> String {
        return "CSelectable"
    }

    class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _CSelectableMO.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged
    var cname: String?

    // func validateCname(value: AutoreleasingUnsafePointer<AnyObject>, error: NSErrorPointer) {}

    // MARK: - Relationships

}

