module uim.business.quotes.lines.resourcecategory;

import uim.business;

@safe class DBUSQuoteLineResourceCategory : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineResourceCategory() { return new DBUSQuoteLineResourceCategory; }
auto BUSQuoteLineResourceCategory(UUID newId, string newName) { return new DBUSQuoteLineResourceCategory(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineResourceCategories {
  mixin(IEIEntitiesRest!("QuoteLineResourceCategory", "QuoteLineResourceCategories"));
}

@safe class DBUSQuoteLineResourceCategories : IBUSQuoteLineResourceCategories {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("QuoteLineResourceCategory", "QuoteLineResourceCategories"));
  mixin(OEntitiesRest!("QuoteLineResourceCategory", "QuoteLineResourceCategories"));
}


/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/QuoteLineResourceCategory
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuoteLineResourceCategory
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuoteLineResourceCategory
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuoteLineResourceCategory
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuoteLineResourceCategory
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuoteLineResourceCategory
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuoteLineResourceCategory
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/QuoteLineResourceCategory
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/QuoteLineResourceCategory
ownerId	Owner Id	projectServiceAutomation/QuoteLineResourceCategory
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/QuoteLineResourceCategory
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/QuoteLineResourceCategory
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/QuoteLineResourceCategory
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuoteLineResourceCategory
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuoteLineResourceCategory
versionNumber	Version Number	projectServiceAutomation/QuoteLineResourceCategory
quoteLineResourceCategoryId	Shows the entity instances.	projectServiceAutomation/QuoteLineResourceCategory
stateCode	Status of the Quote Line Resource Category	projectServiceAutomation/QuoteLineResourceCategory
stateCode_display		projectServiceAutomation/QuoteLineResourceCategory
statusCode	Reason for the status of the Quote Line Resource Category	projectServiceAutomation/QuoteLineResourceCategory
statusCode_display		projectServiceAutomation/QuoteLineResourceCategory
description	Type the name of the custom entity.	projectServiceAutomation/QuoteLineResourceCategory
billingType	Select whether this role costs are going to be billed to the customer or not. Valid values are Chargeable, Non-chargeable and Complimentary. Only chargeable transactions will affect invoice totals	projectServiceAutomation/QuoteLineResourceCategory
billingType_display		projectServiceAutomation/QuoteLineResourceCategory
quoteLine	(Deprecated) Quote line corresponding to this record	projectServiceAutomation/QuoteLineResourceCategory
quoteLineId	Unique identifier for Quote Line associated with Quote Line Resource Category.	projectServiceAutomation/QuoteLineResourceCategory
quoteLineTransactionClassification	Select the transaction classification that is mapped to the quote line.	projectServiceAutomation/QuoteLineResourceCategory
resourceCategory	Select the role that is being quoted on this quote line.	projectServiceAutomation/QuoteLineResourceCategory
transactionClassification	Transaction type corresponding to this record	projectServiceAutomation/QuoteLineResourceCategory
transactionClassification_display		projectServiceAutomation/QuoteLineResourceCategory


*/