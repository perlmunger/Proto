// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BSelectableMO.swift instead.

import CoreData

enum BSelectableMOAttributes: String {
    case bname = "bname"
}

@objc
class _BSelectableMO: NSManagedObject {

    // MARK: - Class methods

    class func entityName () -> String {
        return "BSelectable"
    }

    class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _BSelectableMO.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged
    var bname: String?

    // func validateBname(value: AutoreleasingUnsafePointer<AnyObject>, error: NSErrorPointer) {}

    // MARK: - Relationships

}

