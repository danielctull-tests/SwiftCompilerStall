// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol Home: Entity {
	var archivedDate: NSDate? { get }
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var identifier: NSNumber { get }
	var lastActivityDate: NSDate? { get }
	var savedDate: NSDate? { get }
	var updatedDate: NSDate? { get }
	var viewedDate: NSDate? { get }
	var withdrawnDate: NSDate? { get }
}

extension Home {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedHome)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct HomeAttributes {
	public static let archivedDate = "archivedDate"
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let identifier = "identifier"
	public static let lastActivityDate = "lastActivityDate"
	public static let savedDate = "savedDate"
	public static let updatedDate = "updatedDate"
	public static let viewedDate = "viewedDate"
	public static let withdrawnDate = "withdrawnDate"
}

struct HomeRelationships {
    static let property = "property"
    static let user = "user"
}

@objc class ManagedHome: NSManagedObject, Home {

    static let entityName = "Home"

    // MARK: - Attributes

	@NSManaged var archivedDate: NSDate?
	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var identifier: NSNumber
	@NSManaged var lastActivityDate: NSDate?
	@NSManaged var savedDate: NSDate?
	@NSManaged var updatedDate: NSDate?
	@NSManaged var viewedDate: NSDate?
	@NSManaged var withdrawnDate: NSDate?

    // MARK: - Relationships

    @NSManaged var property: ManagedProperty?

    @NSManaged var user: ManagedUser?

}

extension Home {

	var attributes: [Attribute] {
		return [
			Attribute(key: "archivedDate", value: archivedDate),
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "deletedDate", value: deletedDate),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "lastActivityDate", value: lastActivityDate),
			Attribute(key: "savedDate", value: savedDate),
			Attribute(key: "updatedDate", value: updatedDate),
			Attribute(key: "viewedDate", value: viewedDate),
			Attribute(key: "withdrawnDate", value: withdrawnDate),
		]
	}
}

extension ManagedHome {

	var relationships: [Relationship] {
		return [
			Relationship(key: "property"),
			Relationship(key: "user"),
		]
	}
}
