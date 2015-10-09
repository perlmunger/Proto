// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ASelectableMO.swift instead.

import CoreData

public enum ASelectableMOAttributes: String {
    case aname = "aname"
}

@objc public
class _ASelectableMO: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "ASelectable"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _ASelectableMO.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var aname: String?

    // func validateAname(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    // MARK: - Relationships

}

