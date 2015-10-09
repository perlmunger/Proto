// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CSelectableMO.swift instead.

import CoreData

public enum CSelectableMOAttributes: String {
    case cname = "cname"
}

@objc public
class _CSelectableMO: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "CSelectable"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _CSelectableMO.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var cname: String?

    // func validateCname(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    // MARK: - Relationships

}

