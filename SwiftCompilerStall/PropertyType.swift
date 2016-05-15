// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol PropertyType: Entity {
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var identifier: String? { get }
	var name: String? { get }
	var updatedDate: NSDate? { get }
}

extension PropertyType {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedPropertyType)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct PropertyTypeAttributes {
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let identifier = "identifier"
	public static let name = "name"
	public static let updatedDate = "updatedDate"
}

struct PropertyTypeRelationships {
    static let properties = "properties"
}

@objc class ManagedPropertyType: NSManagedObject, PropertyType {

    static let entityName = "PropertyType"

    // MARK: - Attributes

	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var identifier: String?
	@NSManaged var name: String?
	@NSManaged var updatedDate: NSDate?

    // MARK: - Relationships

    @NSManaged var properties: NSSet

}

extension PropertyType {

	var attributes: [Attribute] {
		return [
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "deletedDate", value: deletedDate),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "name", value: name),
			Attribute(key: "updatedDate", value: updatedDate),
		]
	}
}

extension ManagedPropertyType {

	var relationships: [Relationship] {
		return [
			Relationship(key: "properties"),
		]
	}
}
