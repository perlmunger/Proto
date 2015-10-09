// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to BSelectableMO.swift instead.

import CoreData

public enum BSelectableMOAttributes: String {
    case bname = "bname"
}

@objc public
class _BSelectableMO: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "BSelectable"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _BSelectableMO.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var bname: String?

    // func validateBname(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    // MARK: - Relationships

}

