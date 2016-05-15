// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol PropertyFeature: Entity {
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var identifier: NSNumber { get }
	var name: String? { get }
	var updatedDate: NSDate? { get }
}

extension PropertyFeature {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedPropertyFeature)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct PropertyFeatureAttributes {
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let identifier = "identifier"
	public static let name = "name"
	public static let updatedDate = "updatedDate"
}

struct PropertyFeatureRelationships {
    static let property = "property"
}

@objc class ManagedPropertyFeature: NSManagedObject, PropertyFeature {

    static let entityName = "PropertyFeature"

    // MARK: - Attributes

	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var identifier: NSNumber
	@NSManaged var name: String?
	@NSManaged var updatedDate: NSDate?

    // MARK: - Relationships

    @NSManaged var property: ManagedProperty?

}

extension ManagedPropertyFeature {

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

extension ManagedPropertyFeature {

	var relationships: [Relationship] {
		return [
			Relationship(key: "property"),
		]
	}
}
