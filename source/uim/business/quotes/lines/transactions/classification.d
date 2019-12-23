module uim.business.quotes.lines.transactions.classification;

import uim.business;

@safe class DBUSQuoteLineTransactionClassification : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineTransactionClassification() { return new DBUSQuoteLineTransactionClassification; }
auto BUSQuoteLineTransactionClassification(UUID newId, string newName) { return new DBUSQuoteLineTransactionClassification(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineTransactionClassifications {
  mixin(IEIEntitiesRest!("QuoteLineTransactionClassification", "QuoteLineTransactionClassifications"));
}

@safe class DBUSQuoteLineTransactionClassifications : IBUSQuoteLineTransactionClassifications {
  mixin(OEntitiesInner!("QuoteLineTransactionClassification", "QuoteLineTransactionClassifications"));
  mixin(OEntitiesRest!("QuoteLineTransactionClassification", "QuoteLineTransactionClassifications"));
}
/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/QuoteLineTransactionClassification
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuoteLineTransactionClassification
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuoteLineTransactionClassification
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuoteLineTransactionClassification
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuoteLineTransactionClassification
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuoteLineTransactionClassification
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuoteLineTransactionClassification
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/QuoteLineTransactionClassification
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/QuoteLineTransactionClassification
ownerId	Owner Id	projectServiceAutomation/QuoteLineTransactionClassification
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/QuoteLineTransactionClassification
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/QuoteLineTransactionClassification
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/QuoteLineTransactionClassification
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuoteLineTransactionClassification
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuoteLineTransactionClassification
versionNumber	Version Number	projectServiceAutomation/QuoteLineTransactionClassification
QuoteLineTransactionClassificationId	Unique identifier for entity instances	projectServiceAutomation/QuoteLineTransactionClassification
stateCode	Status of the Quote Line Transaction Classification	projectServiceAutomation/QuoteLineTransactionClassification
stateCode_display		projectServiceAutomation/QuoteLineTransactionClassification
statusCode	Reason for the status of the Quote Line Transaction Classification	projectServiceAutomation/QuoteLineTransactionClassification
statusCode_display		projectServiceAutomation/QuoteLineTransactionClassification
description	Type the name of the custom entity.	projectServiceAutomation/QuoteLineTransactionClassification
billingType	Select whether the transaction classification identified on the quote line will be charged to the customer or not. Valid values are Chargeable, Non-chargeable and Complimentary.	projectServiceAutomation/QuoteLineTransactionClassification
billingType_display		projectServiceAutomation/QuoteLineTransactionClassification
include		projectServiceAutomation/QuoteLineTransactionClassification
quoteLine	(Deprecated) Type the reference to the Quote line to which this transaction classification is being associated to.	projectServiceAutomation/QuoteLineTransactionClassification
quoteLineId	Unique identifier for Quote Line associated with Quote Line Transaction Classification.	projectServiceAutomation/QuoteLineTransactionClassification
transactionClassification	Select the transaction classification on the quote line. 4 classifications are supported: Select the time, Expense, Material and Fee.	projectServiceAutomation/QuoteLineTransactionClassification
transactionClassification_display		projectServiceAutomation/QuoteLineTransactionClassification


*/