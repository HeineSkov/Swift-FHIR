//
//  ClaimResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/ClaimResponse) on 2016-07-07.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Remittance resource.
 *
 *  This resource provides the adjudication details from the processing of a Claim resource.
 */
public class ClaimResponse: DomainResource {
	override public class var resourceName: String {
		get { return "ClaimResponse" }
	}
	
	/// Insurer added line items.
	public var addItem: [ClaimResponseAddItem]?
	
	/// Insurance or medical plan.
	public var coverage: [ClaimResponseCoverage]?
	
	/// Creation date.
	public var created: DateTime?
	
	/// Disposition Message.
	public var disposition: String?
	
	/// Processing errors.
	public var error: [ClaimResponseError]?
	
	/// Printed Form Identifier.
	public var form: Coding?
	
	/// Response  number.
	public var identifier: [Identifier]?
	
	/// Line items.
	public var item: [ClaimResponseItem]?
	
	/// Processing notes.
	public var note: [ClaimResponseNote]?
	
	/// Insurer.
	public var organizationIdentifier: Identifier?
	
	/// Insurer.
	public var organizationReference: Reference?
	
	/// Original version.
	public var originalRuleset: Coding?
	
	/// complete | error.
	public var outcome: String?
	
	/// Party to be paid any benefits payable.
	public var payeeType: Coding?
	
	/// Payment adjustment for non-Claim issues.
	public var paymentAdjustment: Quantity?
	
	/// Reason for Payment adjustment.
	public var paymentAdjustmentReason: Coding?
	
	/// Payment amount.
	public var paymentAmount: Quantity?
	
	/// Expected data of Payment.
	public var paymentDate: Date?
	
	/// Payment identifier.
	public var paymentRef: Identifier?
	
	/// Id of resource triggering adjudication.
	public var requestIdentifier: Identifier?
	
	/// Responsible organization.
	public var requestOrganizationIdentifier: Identifier?
	
	/// Responsible organization.
	public var requestOrganizationReference: Reference?
	
	/// Responsible practitioner.
	public var requestProviderIdentifier: Identifier?
	
	/// Responsible practitioner.
	public var requestProviderReference: Reference?
	
	/// Id of resource triggering adjudication.
	public var requestReference: Reference?
	
	/// Funds reserved status.
	public var reserved: Coding?
	
	/// Resource version.
	public var ruleset: Coding?
	
	/// Total benefit payable for the Claim.
	public var totalBenefit: Quantity?
	
	/// Total Cost of service from the Claim.
	public var totalCost: Quantity?
	
	/// Unallocated deductible.
	public var unallocDeductable: Quantity?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["addItem"] {
				presentKeys.insert("addItem")
				if let val = exist as? [FHIRJSON] {
					self.addItem = ClaimResponseAddItem.instantiate(fromArray: val, owner: self) as? [ClaimResponseAddItem]
				}
				else {
					errors.append(FHIRJSONError(key: "addItem", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverage"] {
				presentKeys.insert("coverage")
				if let val = exist as? [FHIRJSON] {
					self.coverage = ClaimResponseCoverage.instantiate(fromArray: val, owner: self) as? [ClaimResponseCoverage]
				}
				else {
					errors.append(FHIRJSONError(key: "coverage", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["created"] {
				presentKeys.insert("created")
				if let val = exist as? String {
					self.created = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "created", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["disposition"] {
				presentKeys.insert("disposition")
				if let val = exist as? String {
					self.disposition = val
				}
				else {
					errors.append(FHIRJSONError(key: "disposition", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["error"] {
				presentKeys.insert("error")
				if let val = exist as? [FHIRJSON] {
					self.error = ClaimResponseError.instantiate(fromArray: val, owner: self) as? [ClaimResponseError]
				}
				else {
					errors.append(FHIRJSONError(key: "error", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["form"] {
				presentKeys.insert("form")
				if let val = exist as? FHIRJSON {
					self.form = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "form", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["item"] {
				presentKeys.insert("item")
				if let val = exist as? [FHIRJSON] {
					self.item = ClaimResponseItem.instantiate(fromArray: val, owner: self) as? [ClaimResponseItem]
				}
				else {
					errors.append(FHIRJSONError(key: "item", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = ClaimResponseNote.instantiate(fromArray: val, owner: self) as? [ClaimResponseNote]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organizationIdentifier"] {
				presentKeys.insert("organizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.organizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["organizationReference"] {
				presentKeys.insert("organizationReference")
				if let val = exist as? FHIRJSON {
					self.organizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "organizationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["originalRuleset"] {
				presentKeys.insert("originalRuleset")
				if let val = exist as? FHIRJSON {
					self.originalRuleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "originalRuleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["outcome"] {
				presentKeys.insert("outcome")
				if let val = exist as? String {
					self.outcome = val
				}
				else {
					errors.append(FHIRJSONError(key: "outcome", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["payeeType"] {
				presentKeys.insert("payeeType")
				if let val = exist as? FHIRJSON {
					self.payeeType = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "payeeType", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentAdjustment"] {
				presentKeys.insert("paymentAdjustment")
				if let val = exist as? FHIRJSON {
					self.paymentAdjustment = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentAdjustment", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentAdjustmentReason"] {
				presentKeys.insert("paymentAdjustmentReason")
				if let val = exist as? FHIRJSON {
					self.paymentAdjustmentReason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentAdjustmentReason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentAmount"] {
				presentKeys.insert("paymentAmount")
				if let val = exist as? FHIRJSON {
					self.paymentAmount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentAmount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentDate"] {
				presentKeys.insert("paymentDate")
				if let val = exist as? String {
					self.paymentDate = Date(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentDate", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["paymentRef"] {
				presentKeys.insert("paymentRef")
				if let val = exist as? FHIRJSON {
					self.paymentRef = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "paymentRef", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestIdentifier"] {
				presentKeys.insert("requestIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestOrganizationIdentifier"] {
				presentKeys.insert("requestOrganizationIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestOrganizationIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestOrganizationIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestOrganizationReference"] {
				presentKeys.insert("requestOrganizationReference")
				if let val = exist as? FHIRJSON {
					self.requestOrganizationReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestOrganizationReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestProviderIdentifier"] {
				presentKeys.insert("requestProviderIdentifier")
				if let val = exist as? FHIRJSON {
					self.requestProviderIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestProviderIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestProviderReference"] {
				presentKeys.insert("requestProviderReference")
				if let val = exist as? FHIRJSON {
					self.requestProviderReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestProviderReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["requestReference"] {
				presentKeys.insert("requestReference")
				if let val = exist as? FHIRJSON {
					self.requestReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "requestReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["reserved"] {
				presentKeys.insert("reserved")
				if let val = exist as? FHIRJSON {
					self.reserved = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reserved", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["ruleset"] {
				presentKeys.insert("ruleset")
				if let val = exist as? FHIRJSON {
					self.ruleset = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "ruleset", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["totalBenefit"] {
				presentKeys.insert("totalBenefit")
				if let val = exist as? FHIRJSON {
					self.totalBenefit = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "totalBenefit", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["totalCost"] {
				presentKeys.insert("totalCost")
				if let val = exist as? FHIRJSON {
					self.totalCost = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "totalCost", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["unallocDeductable"] {
				presentKeys.insert("unallocDeductable")
				if let val = exist as? FHIRJSON {
					self.unallocDeductable = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "unallocDeductable", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let addItem = self.addItem {
			json["addItem"] = ClaimResponseAddItem.asJSONArray(addItem)
		}
		if let coverage = self.coverage {
			json["coverage"] = ClaimResponseCoverage.asJSONArray(coverage)
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = ClaimResponseError.asJSONArray(error)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let item = self.item {
			json["item"] = ClaimResponseItem.asJSONArray(item)
		}
		if let note = self.note {
			json["note"] = ClaimResponseNote.asJSONArray(note)
		}
		if let organizationIdentifier = self.organizationIdentifier {
			json["organizationIdentifier"] = organizationIdentifier.asJSON()
		}
		if let organizationReference = self.organizationReference {
			json["organizationReference"] = organizationReference.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let payeeType = self.payeeType {
			json["payeeType"] = payeeType.asJSON()
		}
		if let paymentAdjustment = self.paymentAdjustment {
			json["paymentAdjustment"] = paymentAdjustment.asJSON()
		}
		if let paymentAdjustmentReason = self.paymentAdjustmentReason {
			json["paymentAdjustmentReason"] = paymentAdjustmentReason.asJSON()
		}
		if let paymentAmount = self.paymentAmount {
			json["paymentAmount"] = paymentAmount.asJSON()
		}
		if let paymentDate = self.paymentDate {
			json["paymentDate"] = paymentDate.asJSON()
		}
		if let paymentRef = self.paymentRef {
			json["paymentRef"] = paymentRef.asJSON()
		}
		if let requestIdentifier = self.requestIdentifier {
			json["requestIdentifier"] = requestIdentifier.asJSON()
		}
		if let requestOrganizationIdentifier = self.requestOrganizationIdentifier {
			json["requestOrganizationIdentifier"] = requestOrganizationIdentifier.asJSON()
		}
		if let requestOrganizationReference = self.requestOrganizationReference {
			json["requestOrganizationReference"] = requestOrganizationReference.asJSON()
		}
		if let requestProviderIdentifier = self.requestProviderIdentifier {
			json["requestProviderIdentifier"] = requestProviderIdentifier.asJSON()
		}
		if let requestProviderReference = self.requestProviderReference {
			json["requestProviderReference"] = requestProviderReference.asJSON()
		}
		if let requestReference = self.requestReference {
			json["requestReference"] = requestReference.asJSON()
		}
		if let reserved = self.reserved {
			json["reserved"] = reserved.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		if let totalBenefit = self.totalBenefit {
			json["totalBenefit"] = totalBenefit.asJSON()
		}
		if let totalCost = self.totalCost {
			json["totalCost"] = totalCost.asJSON()
		}
		if let unallocDeductable = self.unallocDeductable {
			json["unallocDeductable"] = unallocDeductable.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurer added line items.
 *
 *  The first tier service adjudications for payor added services.
 */
public class ClaimResponseAddItem: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseAddItem" }
	}
	
	/// Added items adjudication.
	public var adjudication: [ClaimResponseAddItemAdjudication]?
	
	/// Added items details.
	public var detail: [ClaimResponseAddItemDetail]?
	
	/// Professional fee or Product charge.
	public var fee: Quantity?
	
	/// List of note numbers which apply.
	public var noteNumberLinkId: [UInt]?
	
	/// Service instances.
	public var sequenceLinkId: [UInt]?
	
	/// Group, Service or Product.
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(service: Coding) {
		self.init(json: nil)
		self.service = service
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseAddItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseAddItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ClaimResponseAddItemDetail.instantiate(fromArray: val, owner: self) as? [ClaimResponseAddItemDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fee"] {
				presentKeys.insert("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fee", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["noteNumberLinkId"] {
				presentKeys.insert("noteNumberLinkId")
				if let val = exist as? [UInt] {
					self.noteNumberLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumberLinkId", wants: Array<UInt>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? [UInt] {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: Array<UInt>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "service"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseAddItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ClaimResponseAddItemDetail.asJSONArray(detail)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let noteNumberLinkId = self.noteNumberLinkId {
			var arr = [AnyObject]()
			for val in noteNumberLinkId {
				arr.append(val.asJSON())
			}
			json["noteNumberLinkId"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			var arr = [AnyObject]()
			for val in sequenceLinkId {
				arr.append(val.asJSON())
			}
			json["sequenceLinkId"] = arr
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseAddItemAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monetary value.
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items details.
 *
 *  The second tier service adjudications for payor added services.
 */
public class ClaimResponseAddItemDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemDetail" }
	}
	
	/// Added items detail adjudication.
	public var adjudication: [ClaimResponseAddItemDetailAdjudication]?
	
	/// Professional fee or Product charge.
	public var fee: Quantity?
	
	/// Service or Product.
	public var service: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(service: Coding) {
		self.init(json: nil)
		self.service = service
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseAddItemDetailAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseAddItemDetailAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["fee"] {
				presentKeys.insert("fee")
				if let val = exist as? FHIRJSON {
					self.fee = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "fee", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["service"] {
				presentKeys.insert("service")
				if let val = exist as? FHIRJSON {
					self.service = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "service", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "service"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseAddItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let fee = self.fee {
			json["fee"] = fee.asJSON()
		}
		if let service = self.service {
			json["service"] = service.asJSON()
		}
		
		return json
	}
}


/**
 *  Added items detail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseAddItemDetailAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseAddItemDetailAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monetary value.
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Insurance or medical plan.
 *
 *  Financial instrument by which payment information for health care.
 */
public class ClaimResponseCoverage: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseCoverage" }
	}
	
	/// Business agreement.
	public var businessArrangement: String?
	
	/// Adjudication results.
	public var claimResponse: Reference?
	
	/// Insurance information.
	public var coverageIdentifier: Identifier?
	
	/// Insurance information.
	public var coverageReference: Reference?
	
	/// Is the focal Coverage.
	public var focal: Bool?
	
	/// Pre-Authorization/Determination Reference.
	public var preAuthRef: [String]?
	
	/// Service instance identifier.
	public var sequence: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(coverageIdentifier: Identifier, coverageReference: Reference, focal: Bool, sequence: UInt) {
		self.init(json: nil)
		self.coverageIdentifier = coverageIdentifier
		self.coverageReference = coverageReference
		self.focal = focal
		self.sequence = sequence
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["businessArrangement"] {
				presentKeys.insert("businessArrangement")
				if let val = exist as? String {
					self.businessArrangement = val
				}
				else {
					errors.append(FHIRJSONError(key: "businessArrangement", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["claimResponse"] {
				presentKeys.insert("claimResponse")
				if let val = exist as? FHIRJSON {
					self.claimResponse = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "claimResponse", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverageIdentifier"] {
				presentKeys.insert("coverageIdentifier")
				if let val = exist as? FHIRJSON {
					self.coverageIdentifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverageIdentifier", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["coverageReference"] {
				presentKeys.insert("coverageReference")
				if let val = exist as? FHIRJSON {
					self.coverageReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "coverageReference", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["focal"] {
				presentKeys.insert("focal")
				if let val = exist as? Bool {
					self.focal = val
				}
				else {
					errors.append(FHIRJSONError(key: "focal", wants: Bool.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "focal"))
			}
			if let exist: AnyObject = js["preAuthRef"] {
				presentKeys.insert("preAuthRef")
				if let val = exist as? [String] {
					self.preAuthRef = val
				}
				else {
					errors.append(FHIRJSONError(key: "preAuthRef", wants: Array<String>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequence"] {
				presentKeys.insert("sequence")
				if let val = exist as? UInt {
					self.sequence = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequence", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequence"))
			}
			
			// check if nonoptional expanded properties are present
			if nil == self.coverageIdentifier && nil == self.coverageReference {
				errors.append(FHIRJSONError(key: "coverage*"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let businessArrangement = self.businessArrangement {
			json["businessArrangement"] = businessArrangement.asJSON()
		}
		if let claimResponse = self.claimResponse {
			json["claimResponse"] = claimResponse.asJSON()
		}
		if let coverageIdentifier = self.coverageIdentifier {
			json["coverageIdentifier"] = coverageIdentifier.asJSON()
		}
		if let coverageReference = self.coverageReference {
			json["coverageReference"] = coverageReference.asJSON()
		}
		if let focal = self.focal {
			json["focal"] = focal.asJSON()
		}
		if let preAuthRef = self.preAuthRef {
			var arr = [AnyObject]()
			for val in preAuthRef {
				arr.append(val.asJSON())
			}
			json["preAuthRef"] = arr
		}
		if let sequence = self.sequence {
			json["sequence"] = sequence.asJSON()
		}
		
		return json
	}
}


/**
 *  Processing errors.
 *
 *  Mutually exclusive with Services Provided (Item).
 */
public class ClaimResponseError: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseError" }
	}
	
	/// Error code detailing processing issues.
	public var code: Coding?
	
	/// Detail sequence number.
	public var detailSequenceLinkId: UInt?
	
	/// Item sequence number.
	public var sequenceLinkId: UInt?
	
	/// Subdetail sequence number.
	public var subdetailSequenceLinkId: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(code: Coding) {
		self.init(json: nil)
		self.code = code
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["code"] {
				presentKeys.insert("code")
				if let val = exist as? FHIRJSON {
					self.code = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "code", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "code"))
			}
			if let exist: AnyObject = js["detailSequenceLinkId"] {
				presentKeys.insert("detailSequenceLinkId")
				if let val = exist as? UInt {
					self.detailSequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "detailSequenceLinkId", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["subdetailSequenceLinkId"] {
				presentKeys.insert("subdetailSequenceLinkId")
				if let val = exist as? UInt {
					self.subdetailSequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "subdetailSequenceLinkId", wants: UInt.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let detailSequenceLinkId = self.detailSequenceLinkId {
			json["detailSequenceLinkId"] = detailSequenceLinkId.asJSON()
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subdetailSequenceLinkId = self.subdetailSequenceLinkId {
			json["subdetailSequenceLinkId"] = subdetailSequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Line items.
 *
 *  The first tier service adjudications for submitted services.
 */
public class ClaimResponseItem: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseItem" }
	}
	
	/// Adjudication details.
	public var adjudication: [ClaimResponseItemAdjudication]?
	
	/// Detail line items.
	public var detail: [ClaimResponseItemDetail]?
	
	/// List of note numbers which apply.
	public var noteNumber: [UInt]?
	
	/// Service instance.
	public var sequenceLinkId: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: UInt) {
		self.init(json: nil)
		self.sequenceLinkId = sequenceLinkId
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseItemAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["detail"] {
				presentKeys.insert("detail")
				if let val = exist as? [FHIRJSON] {
					self.detail = ClaimResponseItemDetail.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "detail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["noteNumber"] {
				presentKeys.insert("noteNumber")
				if let val = exist as? [UInt] {
					self.noteNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "noteNumber", wants: Array<UInt>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequenceLinkId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemAdjudication.asJSONArray(adjudication)
		}
		if let detail = self.detail {
			json["detail"] = ClaimResponseItemDetail.asJSONArray(detail)
		}
		if let noteNumber = self.noteNumber {
			var arr = [AnyObject]()
			for val in noteNumber {
				arr.append(val.asJSON())
			}
			json["noteNumber"] = arr
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Adjudication details.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseItemAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monetary value.
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Detail line items.
 *
 *  The second tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetail" }
	}
	
	/// Detail adjudication.
	public var adjudication: [ClaimResponseItemDetailAdjudication]?
	
	/// Service instance.
	public var sequenceLinkId: UInt?
	
	/// Subdetail line items.
	public var subDetail: [ClaimResponseItemDetailSubDetail]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: UInt) {
		self.init(json: nil)
		self.sequenceLinkId = sequenceLinkId
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseItemDetailAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemDetailAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequenceLinkId"))
			}
			if let exist: AnyObject = js["subDetail"] {
				presentKeys.insert("subDetail")
				if let val = exist as? [FHIRJSON] {
					self.subDetail = ClaimResponseItemDetailSubDetail.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemDetailSubDetail]
				}
				else {
					errors.append(FHIRJSONError(key: "subDetail", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemDetailAdjudication.asJSONArray(adjudication)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		if let subDetail = self.subDetail {
			json["subDetail"] = ClaimResponseItemDetailSubDetail.asJSONArray(subDetail)
		}
		
		return json
	}
}


/**
 *  Detail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monetary value.
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Subdetail line items.
 *
 *  The third tier service adjudications for submitted services.
 */
public class ClaimResponseItemDetailSubDetail: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubDetail" }
	}
	
	/// Subdetail adjudication.
	public var adjudication: [ClaimResponseItemDetailSubDetailAdjudication]?
	
	/// Service instance.
	public var sequenceLinkId: UInt?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(sequenceLinkId: UInt) {
		self.init(json: nil)
		self.sequenceLinkId = sequenceLinkId
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["adjudication"] {
				presentKeys.insert("adjudication")
				if let val = exist as? [FHIRJSON] {
					self.adjudication = ClaimResponseItemDetailSubDetailAdjudication.instantiate(fromArray: val, owner: self) as? [ClaimResponseItemDetailSubDetailAdjudication]
				}
				else {
					errors.append(FHIRJSONError(key: "adjudication", wants: Array<FHIRJSON>.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["sequenceLinkId"] {
				presentKeys.insert("sequenceLinkId")
				if let val = exist as? UInt {
					self.sequenceLinkId = val
				}
				else {
					errors.append(FHIRJSONError(key: "sequenceLinkId", wants: UInt.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "sequenceLinkId"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let adjudication = self.adjudication {
			json["adjudication"] = ClaimResponseItemDetailSubDetailAdjudication.asJSONArray(adjudication)
		}
		if let sequenceLinkId = self.sequenceLinkId {
			json["sequenceLinkId"] = sequenceLinkId.asJSON()
		}
		
		return json
	}
}


/**
 *  Subdetail adjudication.
 *
 *  The adjudications results.
 */
public class ClaimResponseItemDetailSubDetailAdjudication: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseItemDetailSubDetailAdjudication" }
	}
	
	/// Monetary amount.
	public var amount: Quantity?
	
	/// Adjudication category such as co-pay, eligible, benefit, etc..
	public var category: Coding?
	
	/// Adjudication reason.
	public var reason: Coding?
	
	/// Non-monetary value.
	public var value: NSDecimalNumber?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(category: Coding) {
		self.init(json: nil)
		self.category = category
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["amount"] {
				presentKeys.insert("amount")
				if let val = exist as? FHIRJSON {
					self.amount = Quantity(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "amount", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["category"] {
				presentKeys.insert("category")
				if let val = exist as? FHIRJSON {
					self.category = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "category", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "category"))
			}
			if let exist: AnyObject = js["reason"] {
				presentKeys.insert("reason")
				if let val = exist as? FHIRJSON {
					self.reason = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "reason", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["value"] {
				presentKeys.insert("value")
				if let val = exist as? NSNumber {
					self.value = NSDecimalNumber(json: val)
				}
				else {
					errors.append(FHIRJSONError(key: "value", wants: NSNumber.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let category = self.category {
			json["category"] = category.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Processing notes.
 *
 *  Note text.
 */
public class ClaimResponseNote: BackboneElement {
	override public class var resourceName: String {
		get { return "ClaimResponseNote" }
	}
	
	/// Note Number for this note.
	public var number: UInt?
	
	/// Note explanatory text.
	public var text: String?
	
	/// display | print | printoper.
	public var type: Coding?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	public override func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist: AnyObject = js["number"] {
				presentKeys.insert("number")
				if let val = exist as? UInt {
					self.number = val
				}
				else {
					errors.append(FHIRJSONError(key: "number", wants: UInt.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["text"] {
				presentKeys.insert("text")
				if let val = exist as? String {
					self.text = val
				}
				else {
					errors.append(FHIRJSONError(key: "text", wants: String.self, has: exist.dynamicType))
				}
			}
			if let exist: AnyObject = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = Coding(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: exist.dynamicType))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let number = self.number {
			json["number"] = number.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}
