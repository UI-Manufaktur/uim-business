module uim.business.quotes.lines.scheduleofvalue;

import uim.business;

@safe class DBUSQuoteLineScheduleOfValue : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineScheduleOfValue() { return new DBUSQuoteLineScheduleOfValue; }
auto BUSQuoteLineScheduleOfValue(UUID newId, string newName) { return new DBUSQuoteLineScheduleOfValue(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineScheduleOfValues {
  mixin(IEIEntitiesRest!("QuoteLineScheduleOfValue", "QuoteLineScheduleOfValues"));
}

@safe class DBUSQuoteLineScheduleOfValues : IBUSQuoteLineScheduleOfValues {
  mixin(OEntitiesInner!("QuoteLineScheduleOfValue", "QuoteLineScheduleOfValues"));
  mixin(OEntitiesRest!("QuoteLineScheduleOfValue", "QuoteLineScheduleOfValues"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/QuoteLineScheduleOfValue
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuoteLineScheduleOfValue
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuoteLineScheduleOfValue
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuoteLineScheduleOfValue
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuoteLineScheduleOfValue
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuoteLineScheduleOfValue
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuoteLineScheduleOfValue
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/QuoteLineScheduleOfValue
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/QuoteLineScheduleOfValue
ownerId	Owner Id	projectServiceAutomation/QuoteLineScheduleOfValue
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/QuoteLineScheduleOfValue
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/QuoteLineScheduleOfValue
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/QuoteLineScheduleOfValue
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuoteLineScheduleOfValue
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuoteLineScheduleOfValue
versionNumber	Version Number	projectServiceAutomation/QuoteLineScheduleOfValue
QuoteLineScheduleOfValueId	Unique identifier for entity instances	projectServiceAutomation/QuoteLineScheduleOfValue
stateCode	Status of the Quote Line Schedule Of Value	projectServiceAutomation/QuoteLineScheduleOfValue
stateCode_display		projectServiceAutomation/QuoteLineScheduleOfValue
statusCode	Reason for the status of the Quote Line Schedule Of Value	projectServiceAutomation/QuoteLineScheduleOfValue
statusCode_display		projectServiceAutomation/QuoteLineScheduleOfValue
name	Type the name of the custom entity.	projectServiceAutomation/QuoteLineScheduleOfValue
amount	Enter the value of the amount on the billing milestone.	projectServiceAutomation/QuoteLineScheduleOfValue
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/QuoteLineScheduleOfValue
exchangeRate	Exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/QuoteLineScheduleOfValue
amountBase	Value of the Amount in base currency.	projectServiceAutomation/QuoteLineScheduleOfValue
milestoneDate	Enter the date on which the milestone is to be invoiced. This, in conjunction with the Invoice status, will be used by the invoice creation job.	projectServiceAutomation/QuoteLineScheduleOfValue
invoiceStatus	Select whether this milestone was invoiced. Valid values are Not ready for invoicing, Ready for Invoicing, On an invoice, and Invoiced.	projectServiceAutomation/QuoteLineScheduleOfValue
invoiceStatus_display		projectServiceAutomation/QuoteLineScheduleOfValue
isDataImport	Indicates if this record was created via import. It's purpose is to support data import.	projectServiceAutomation/QuoteLineScheduleOfValue
projectTask	Select the project task that is tracking the work for this billing milestone.	projectServiceAutomation/QuoteLineScheduleOfValue
tax		projectServiceAutomation/QuoteLineScheduleOfValue
taxBase	Value of the tax in base currency.	projectServiceAutomation/QuoteLineScheduleOfValue
amountAfterTax		projectServiceAutomation/QuoteLineScheduleOfValue
amountAfterTaxBase	Value of the amount_after_tax in base currency.	projectServiceAutomation/QuoteLineScheduleOfValue

*/
