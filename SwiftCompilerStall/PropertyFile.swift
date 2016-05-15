// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol PropertyFile: Entity {
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var fileDescription: String? { get }
	var identifier: NSNumber { get }
	var link: AnyObject? { get }
	var title: String? { get }
	var type: String? { get }
	var updatedDate: NSDate? { get }
}

extension PropertyFile {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedPropertyFile)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct PropertyFileAttributes {
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let fileDescription = "fileDescription"
	public static let identifier = "identifier"
	public static let link = "link"
	public static let title = "title"
	public static let type = "type"
	public static let updatedDate = "updatedDate"
}

struct PropertyFileRelationships {
    static let properties = "properties"
}

@objc class ManagedPropertyFile: NSManagedObject, PropertyFile {

    static let entityName = "PropertyFile"

    // MARK: - Attributes

	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var fileDescription: String?
	@NSManaged var identifier: NSNumber
	@NSManaged var link: AnyObject?
	@NSManaged var title: String?
	@NSManaged var type: String?
	@NSManaged var updatedDate: NSDate?

    // MARK: - Relationships

    @NSManaged var properties: NSSet

}

extension PropertyFile {

	var attributes: [Attribute] {
		return [
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "deletedDate", value: deletedDate),
			Attribute(key: "fileDescription", value: fileDescription),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "link", value: link),
			Attribute(key: "title", value: title),
			Attribute(key: "type", value: type),
			Attribute(key: "updatedDate", value: updatedDate),
		]
	}
}

extension ManagedPropertyFile {

	var relationships: [Relationship] {
		return [
			Relationship(key: "properties"),
		]
	}
}
