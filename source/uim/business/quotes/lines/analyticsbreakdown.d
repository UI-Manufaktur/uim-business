module uim.business.quotes.lines.analyticsbreakdown;

import uim.business;

@safe class DBUSQuoteLineAnalyticsBreakdown : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineAnalyticsBreakdown() { return new DBUSQuoteLineAnalyticsBreakdown; }
auto BUSQuoteLineAnalyticsBreakdown(UUID newId, string newName) { return new DBUSQuoteLineAnalyticsBreakdown(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineAnalyticsBreakdowns {
  mixin(IEIEntitiesRest!("QuoteLineAnalyticsBreakdown", "quotelineanalyticsbreakdown"));
}

@safe class DBUSQuoteLineAnalyticsBreakdowns : IBUSQuoteLineAnalyticsBreakdowns {
  mixin(OEntitiesInner!("QuoteLineAnalyticsBreakdown", "quotelineanalyticsbreakdown"));
  mixin(OEntitiesRest!("QuoteLineAnalyticsBreakdown", "quotelineanalyticsbreakdown"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
ownerId	Owner Id	projectServiceAutomation/QuoteLineAnalyticsBreakdown
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/QuoteLineAnalyticsBreakdown
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
versionNumber	Version Number	projectServiceAutomation/QuoteLineAnalyticsBreakdown
quoteLineAnalyticsBreakdownId	Unique identifier for entity instances	projectServiceAutomation/QuoteLineAnalyticsBreakdown
stateCode	Status of the Quote Line Analytics Breakdown	projectServiceAutomation/QuoteLineAnalyticsBreakdown
stateCode_display		projectServiceAutomation/QuoteLineAnalyticsBreakdown
statusCode	Reason for the status of the Quote Line Analytics Breakdown	projectServiceAutomation/QuoteLineAnalyticsBreakdown
statusCode_display		projectServiceAutomation/QuoteLineAnalyticsBreakdown
name	Type a description of the entity breakdown.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
amount	Enter the amount on the quote line estimate.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
exchangeRate	Exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
amountBase	Value of the Amount in base currency.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
billingType	Select whether the quote line estimate will be charged to the customer. Valid values are Chargeable, Non-chargeable and Complimentary. Only chargeable transactions will affect the invoice totals.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
billingType_display		projectServiceAutomation/QuoteLineAnalyticsBreakdown
endDateTime	Enter the estimated end date of the quote line estimate.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
price	Enter the unit price on the quote line estimate.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
priceBase	Value of the Price in base currency.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
quote	Select the quote that this quote line estimate belongs to.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
quoteLineDetail	Select the quote line estimate.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
quoteLineScheduleOfValue	Shows the billing milestone for the quote line.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
resourceCategory	Select the role that is estimated on the quote line.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
startDateTime	Enter the estimated start date of the quote line estimate.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
transactionCategory	Select the category identified on the quote line estimate.	projectServiceAutomation/QuoteLineAnalyticsBreakdown
transactionClassification	Transaction classification of Project quote analytics	projectServiceAutomation/QuoteLineAnalyticsBreakdown
transactionClassification_display		projectServiceAutomation/QuoteLineAnalyticsBreakdown
transactionTypeCode	Transaction type of the Project quote analytics	projectServiceAutomation/QuoteLineAnalyticsBreakdown
transactionTypeCode_display		projectServiceAutomation/QuoteLineAnalyticsBreakdown


*/