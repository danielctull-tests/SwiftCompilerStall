// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol User: Entity {
	var createdDate: NSDate? { get }
	var email: String? { get }
	var identifier: NSNumber { get }
	var name: String? { get }
	var phone: String? { get }
	var updatedDate: NSDate? { get }
}

extension User {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedUser)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct UserAttributes {
	public static let createdDate = "createdDate"
	public static let email = "email"
	public static let identifier = "identifier"
	public static let name = "name"
	public static let phone = "phone"
	public static let updatedDate = "updatedDate"
}

struct UserRelationships {
    static let homes = "homes"
}

@objc class ManagedUser: NSManagedObject, User {

    static let entityName = "User"

    // MARK: - Attributes

	@NSManaged var createdDate: NSDate?
	@NSManaged var email: String?
	@NSManaged var identifier: NSNumber
	@NSManaged var name: String?
	@NSManaged var phone: String?
	@NSManaged var updatedDate: NSDate?

    // MARK: - Relationships

    @NSManaged var homes: NSSet

}

extension ManagedUser {

	var attributes: [Attribute] {
		return [
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "email", value: email),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "name", value: name),
			Attribute(key: "phone", value: phone),
			Attribute(key: "updatedDate", value: updatedDate),
		]
	}
}

extension ManagedUser {

	var relationships: [Relationship] {
		return [
			Relationship(key: "homes"),
		]
	}
}
