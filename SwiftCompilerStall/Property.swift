// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol Property: Entity {
	var bathroomCount: NSNumber? { get }
	var bedroomCount: NSNumber? { get }
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var exteriorArea: NSNumber? { get }
	var identifier: NSNumber { get }
	var interiorArea: NSNumber? { get }
	var parkingCount: NSNumber? { get }
	var propertyDescription: String? { get }
	var roomCount: NSNumber? { get }
	var updatedDate: NSDate? { get }
	var year: NSNumber? { get }
}

extension Property {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedProperty)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct PropertyAttributes {
	public static let bathroomCount = "bathroomCount"
	public static let bedroomCount = "bedroomCount"
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let exteriorArea = "exteriorArea"
	public static let identifier = "identifier"
	public static let interiorArea = "interiorArea"
	public static let parkingCount = "parkingCount"
	public static let propertyDescription = "propertyDescription"
	public static let roomCount = "roomCount"
	public static let updatedDate = "updatedDate"
	public static let year = "year"
}

struct PropertyRelationships {
    static let features = "features"
    static let files = "files"
    static let homes = "homes"
    static let type = "type"
}

@objc class ManagedProperty: NSManagedObject, Property {

    static let entityName = "Property"

    // MARK: - Attributes

	@NSManaged var bathroomCount: NSNumber?
	@NSManaged var bedroomCount: NSNumber?
	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var exteriorArea: NSNumber?
	@NSManaged var identifier: NSNumber
	@NSManaged var interiorArea: NSNumber?
	@NSManaged var parkingCount: NSNumber?
	@NSManaged var propertyDescription: String?
	@NSManaged var roomCount: NSNumber?
	@NSManaged var updatedDate: NSDate?
	@NSManaged var year: NSNumber?

    // MARK: - Relationships

    @NSManaged var features: NSOrderedSet

    @NSManaged var files: NSOrderedSet

    @NSManaged var homes: NSSet

    @NSManaged var type: ManagedPropertyType?

}

extension Property {

	var attributes: [Attribute] {
		return [
			Attribute(key: "bathroomCount", value: bathroomCount),
			Attribute(key: "bedroomCount", value: bedroomCount),
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "deletedDate", value: deletedDate),
			Attribute(key: "exteriorArea", value: exteriorArea),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "interiorArea", value: interiorArea),
			Attribute(key: "parkingCount", value: parkingCount),
			Attribute(key: "propertyDescription", value: propertyDescription),
			Attribute(key: "roomCount", value: roomCount),
			Attribute(key: "updatedDate", value: updatedDate),
			Attribute(key: "year", value: year),
		]
	}
}

extension ManagedProperty {

	var relationships: [Relationship] {
		return [
			Relationship(key: "features"),
			Relationship(key: "files"),
			Relationship(key: "homes"),
			Relationship(key: "type"),
		]
	}
}
