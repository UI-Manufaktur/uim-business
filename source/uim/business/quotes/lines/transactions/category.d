module uim.business.quotes.lines.transactions.category;

import uim.business;

@safe class DBUSQuoteLineTransactionCategory : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineTransactionCategory() { return new DBUSQuoteLineTransactionCategory; }
auto BUSQuoteLineTransactionCategory(UUID newId, string newName) { return new DBUSQuoteLineTransactionCategory(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineTransactionCategories {
  mixin(IEIEntitiesRest!("QuoteLineTransactionCategory", "QuoteLineTransactionCategories"));
}

@safe class DBUSQuoteLineTransactionCategories : IBUSQuoteLineTransactionCategories {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("QuoteLineTransactionCategory", "QuoteLineTransactionCategories"));
  mixin(OEntitiesRest!("QuoteLineTransactionCategory", "QuoteLineTransactionCategories"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
createdBy	Unique identifier of the user who created the record.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
modifiedOn	Date and time when the record was modified.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
modifiedBy	Unique identifier of the user who modified the record.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
overriddenCreatedOn	Date and time that the record was migrated.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
ownerIdType	The type of owner, either User or Team.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
ownerId	Owner Id	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
owningBusinessUnit	Unique identifier for the business unit that owns the record	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
owningUser	Unique identifier of the user that owns the activity.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
owningTeam	Unique identifier for the team that owns the record.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
timeZoneRuleVersionNumber	For internal use only.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
versionNumber	Version Number	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
quotelinetransactioncategoryId	Shows the entity instances.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
stateCode	Status of the Quote Line Transaction Category	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
stateCode_display		quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
statusCode	Reason for the status of the Quote Line Transaction Category	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
statusCode_display		quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
description	Type the name of the custom entity.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
billingType	Select whether the transaction category will be charged to the customer. Valid values are Chargeable, Non-chargeable, Complimentary. QuoteLineTransactionCategory transactions in chargeable categories only will affect the total on the eventual invoice	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
billingType_display		quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
quoteLine	(Deprecated) Quote line corresponding to this record	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
quoteLineId	Unique identifier for Quote Line associated with Quote Line Transaction Category.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
quoteLineTransactionClassification	Select the transaction classification on the quote line. 4 classifications are supported: Select the time, Expense, Material and Fee. For Fixed price quote lines, milestone transaction type is also supported	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
transactionCategory	Shows the transaction classification for this quote line.	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
transactionClassification	Transaction type corresponding to this record	quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory
transactionClassification_display		quotelinetransactioncategoryServiceAutomation/QuoteLineTransactionCategory


*/