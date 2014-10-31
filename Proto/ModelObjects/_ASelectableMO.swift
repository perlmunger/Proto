// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ASelectableMO.swift instead.

import CoreData

enum ASelectableMOAttributes: String {
    case aname = "aname"
}

@objc
class _ASelectableMO: NSManagedObject {

    // MARK: - Class methods

    class func entityName () -> String {
        return "ASelectable"
    }

    class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _ASelectableMO.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged
    var aname: String?

    // func validateAname(value: AutoreleasingUnsafePointer<AnyObject>, error: NSErrorPointer) {}

    // MARK: - Relationships

}

