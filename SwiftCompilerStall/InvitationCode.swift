// DO NOT EDIT. This file is machine-generated and constantly overwritten.

import Foundation
import CoreData

public protocol InvitationCode: Entity {
	var active: NSNumber? { get }
	var code: String? { get }
	var createdDate: NSDate? { get }
	var deletedDate: NSDate? { get }
	var identifier: NSNumber { get }
	var updatedDate: NSDate? { get }
}

extension InvitationCode {

	public func changedKeys() -> [String] {

		guard
			let changedValues = (self as? ManagedInvitationCode)?.changedValuesForCurrentEvent(),
			let keys = (changedValues as NSDictionary).allKeys as? [String]
		else {
			return []
		}

		return keys
	}
}

public struct InvitationCodeAttributes {
	public static let active = "active"
	public static let code = "code"
	public static let createdDate = "createdDate"
	public static let deletedDate = "deletedDate"
	public static let identifier = "identifier"
	public static let updatedDate = "updatedDate"
}

@objc class ManagedInvitationCode: NSManagedObject, InvitationCode {

    static let entityName = "InvitationCode"

    // MARK: - Attributes

	@NSManaged var active: NSNumber?
	@NSManaged var code: String?
	@NSManaged var createdDate: NSDate?
	@NSManaged var deletedDate: NSDate?
	@NSManaged var identifier: NSNumber
	@NSManaged var updatedDate: NSDate?

    // MARK: - Relationships

}

extension InvitationCode {

	var attributes: [Attribute] {
		return [
			Attribute(key: "active", value: active),
			Attribute(key: "code", value: code),
			Attribute(key: "createdDate", value: createdDate),
			Attribute(key: "deletedDate", value: deletedDate),
			Attribute(key: "identifier", value: identifier),
			Attribute(key: "updatedDate", value: updatedDate),
		]
	}
}

extension ManagedInvitationCode {

	var relationships: [Relationship] {
		return [
		]
	}
}
