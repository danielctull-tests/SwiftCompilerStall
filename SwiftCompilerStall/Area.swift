// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol Area: Entity {
	var buyBudgetAverage: NSNumber? { get }
	var buyBudgetMaximum: NSNumber? { get }
	var buyBudgetMinimum: NSNumber? { get }
	var content: String? { get }
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var identifier: NSNumber { get }
	var primaryImageURL: AnyObject? { get }
	var rentBudgetAverage: NSNumber? { get }
	var rentBudgetMaximum: NSNumber? { get }
	var rentBudgetMinimum: NSNumber? { get }
	var secondaryImageURL: AnyObject? { get }
	var status: String? { get }
	var title: String? { get }
	var updatedDate: NSDate? { get }
}

extension Area {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedArea)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct AreaAttributes {
	public static let buyBudgetAverage = "buyBudgetAverage"
	public static let buyBudgetMaximum = "buyBudgetMaximum"
	public static let buyBudgetMinimum = "buyBudgetMinimum"
	public static let content = "content"
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let identifier = "identifier"
	public static let primaryImageURL = "primaryImageURL"
	public static let rentBudgetAverage = "rentBudgetAverage"
	public static let rentBudgetMaximum = "rentBudgetMaximum"
	public static let rentBudgetMinimum = "rentBudgetMinimum"
	public static let secondaryImageURL = "secondaryImageURL"
	public static let status = "status"
	public static let title = "title"
	public static let updatedDate = "updatedDate"
}

@objc class ManagedArea: NSManagedObject, Area {

    static let entityName = "Area"

    // MARK: - Attributes

	@NSManaged var buyBudgetAverage: NSNumber?
	@NSManaged var buyBudgetMaximum: NSNumber?
	@NSManaged var buyBudgetMinimum: NSNumber?
	@NSManaged var content: String?
	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var identifier: NSNumber
	@NSManaged var primaryImageURL: AnyObject?
	@NSManaged var rentBudgetAverage: NSNumber?
	@NSManaged var rentBudgetMaximum: NSNumber?
	@NSManaged var rentBudgetMinimum: NSNumber?
	@NSManaged var secondaryImageURL: AnyObject?
	@NSManaged var status: String?
	@NSManaged var title: String?
	@NSManaged var updatedDate: NSDate?

    // MARK: - Relationships

}

extension ManagedArea {

	var attributes: [Attribute] {
		return [
			Attribute(key: "buyBudgetAverage", value: buyBudgetAverage),
			Attribute(key: "buyBudgetMaximum", value: buyBudgetMaximum),
			Attribute(key: "buyBudgetMinimum", value: buyBudgetMinimum),
			Attribute(key: "content", value: content),
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "deletedDate", value: deletedDate),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "primaryImageURL", value: primaryImageURL),
			Attribute(key: "rentBudgetAverage", value: rentBudgetAverage),
			Attribute(key: "rentBudgetMaximum", value: rentBudgetMaximum),
			Attribute(key: "rentBudgetMinimum", value: rentBudgetMinimum),
			Attribute(key: "secondaryImageURL", value: secondaryImageURL),
			Attribute(key: "status", value: status),
			Attribute(key: "title", value: title),
			Attribute(key: "updatedDate", value: updatedDate),
		]
	}
}

extension ManagedArea {

	var relationships: [Relationship] {
		return [
		]
	}
}
