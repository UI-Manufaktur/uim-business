module uim.business.quotes.lines.invoiceschedule;

import uim.business;

@safe class DBUSQuoteLineInvoiceSchedule : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineInvoiceSchedule() { return new DBUSQuoteLineInvoiceSchedule; }
auto BUSQuoteLineInvoiceSchedule(UUID newId, string newName) { return new DBUSQuoteLineInvoiceSchedule(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineInvoiceSchedules {
  mixin(IEIEntitiesRest!("QuoteLineInvoiceSchedule", "QuoteLineInvoiceSchedules"));
}

@safe class DBUSQuoteLineInvoiceSchedules : IBUSQuoteLineInvoiceSchedules {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("QuoteLineInvoiceSchedule", "QuoteLineInvoiceSchedules"));
  mixin(OEntitiesRest!("QuoteLineInvoiceSchedule", "QuoteLineInvoiceSchedules"));
}

/*

Attributes
Name	Description	First Included in Instance
quoteLineInvoiceScheduleId	Unique identifier for entity instances	projectServiceAutomation/QuoteLineInvoiceSchedule
createdOn	Date and time when the record was created.	projectServiceAutomation/QuoteLineInvoiceSchedule
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuoteLineInvoiceSchedule
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuoteLineInvoiceSchedule
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuoteLineInvoiceSchedule
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuoteLineInvoiceSchedule
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuoteLineInvoiceSchedule
organizationId	Unique identifier for the organization	projectServiceAutomation/QuoteLineInvoiceSchedule
stateCode	Status of the Quote Line Invoice Schedule	projectServiceAutomation/QuoteLineInvoiceSchedule
stateCode_display		projectServiceAutomation/QuoteLineInvoiceSchedule
statusCode	Reason for the status of the Quote Line Invoice Schedule	projectServiceAutomation/QuoteLineInvoiceSchedule
statusCode_display		projectServiceAutomation/QuoteLineInvoiceSchedule
versionNumber	Version Number	projectServiceAutomation/QuoteLineInvoiceSchedule
importSequenceNumber	Sequence number of the import that created this record.	projectServiceAutomation/QuoteLineInvoiceSchedule
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuoteLineInvoiceSchedule
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuoteLineInvoiceSchedule
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuoteLineInvoiceSchedule
name	Type the name of the custom entity.	projectServiceAutomation/QuoteLineInvoiceSchedule
invoiceRunDate	Enter the date for the invoice creation job to use as invoice date on the invoice generated	projectServiceAutomation/QuoteLineInvoiceSchedule
quoteLineScheduleOfValue	Billing milestone for the quote line	projectServiceAutomation/QuoteLineInvoiceSchedule
transactionCutOffDate	Enter the date used by the invoice creation job to filter transactions that happened on or before this date for invoice creation	projectServiceAutomation/QuoteLineInvoiceSchedule


*/