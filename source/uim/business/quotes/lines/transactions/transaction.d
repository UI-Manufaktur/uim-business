module uim.business.quotes.lines.transactions.transaction;

import uim.business;

@safe class DBUSQuoteLineTransaction : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSQuoteLineTransaction() { return new DBUSQuoteLineTransaction; }
auto BUSQuoteLineTransaction(UUID newId, string newName) { return new DBUSQuoteLineTransaction(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteLineTransactions {
  mixin(IEIEntitiesRest!("QuoteLineTransaction", "QuoteLineTransactions"));
}

@safe class DBUSQuoteLineTransactions : IBUSQuoteLineTransactions {
  mixin(OEntitiesInner!("QuoteLineTransaction", "QuoteLineTransactions"));
  mixin(OEntitiesRest!("QuoteLineTransaction", "QuoteLineTransactions"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/QuoteLineTransaction
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuoteLineTransaction
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuoteLineTransaction
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuoteLineTransaction
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuoteLineTransaction
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuoteLineTransaction
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuoteLineTransaction
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/QuoteLineTransaction
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/QuoteLineTransaction
ownerId	Owner Id	projectServiceAutomation/QuoteLineTransaction
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/QuoteLineTransaction
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/QuoteLineTransaction
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/QuoteLineTransaction
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuoteLineTransaction
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuoteLineTransaction
versionNumber	Version Number	projectServiceAutomation/QuoteLineTransaction
QuoteLineTransactionId	Unique identifier for entity instances	projectServiceAutomation/QuoteLineTransaction
stateCode	Status of the Quote Line Detail	projectServiceAutomation/QuoteLineTransaction
stateCode_display		projectServiceAutomation/QuoteLineTransaction
statusCode	Reason for the status of the Quote Line Detail	projectServiceAutomation/QuoteLineTransaction
statusCode_display		projectServiceAutomation/QuoteLineTransaction
description	Type the name of the custom entity.	projectServiceAutomation/QuoteLineTransaction
accountCustomer	Select the name of the customer account.	projectServiceAutomation/QuoteLineTransaction
accountingDate		projectServiceAutomation/QuoteLineTransaction
accountVendor		projectServiceAutomation/QuoteLineTransaction
amount	Enter the amount on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/QuoteLineTransaction
exchangeRate	Exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/QuoteLineTransaction
amountBase	Value of the Amount in base currency.	projectServiceAutomation/QuoteLineTransaction
amountMethod	Select the calculation method used for the amount on the estimate line. Valid methods are: Multiply Quantity By Price, Fixed Price, Multiply Basis Quantity By Price, Multiply Basis Amount By Percent	projectServiceAutomation/QuoteLineTransaction
amountMethod_display		projectServiceAutomation/QuoteLineTransaction
basisAmount		projectServiceAutomation/QuoteLineTransaction
basisAmountBase	Value of the Basis Amount in base currency.	projectServiceAutomation/QuoteLineTransaction
basisPrice		projectServiceAutomation/QuoteLineTransaction
basisPriceBase	Value of the Basis Price in base currency.	projectServiceAutomation/QuoteLineTransaction
basisQuantity		projectServiceAutomation/QuoteLineTransaction
billingType	Select whether this quote line estimate will be charged to the customer or not. Only chargeable transactions will add to the invoice total	projectServiceAutomation/QuoteLineTransaction
billingType_display		projectServiceAutomation/QuoteLineTransaction
bookableResource	Shows the resource.	projectServiceAutomation/QuoteLineTransaction
contactCustomer	Select the contact customer on the quote.	projectServiceAutomation/QuoteLineTransaction
contactVendor		projectServiceAutomation/QuoteLineTransaction
customerType	Select whether the customer is an account or a contact	projectServiceAutomation/QuoteLineTransaction
customerType_display		projectServiceAutomation/QuoteLineTransaction
documentDate	Enter the date that the invoice is sent to the customer. Only relevant on invoice and invoice line transactions	projectServiceAutomation/QuoteLineTransaction
endDateTime	Enter the end date of the work being estimated on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
exchangeRateDate		projectServiceAutomation/QuoteLineTransaction
isDataImport	Indicates if this record was created via import. It's purpose is to support data import.	projectServiceAutomation/QuoteLineTransaction
origin	Points to the quote line detail that originated an entry. For example, a revenue entry points to its related cost entry.	projectServiceAutomation/QuoteLineTransaction
percent	Enter the amount, in percent, to multiply the basis by. This field is relevant when the amount calculation method is "Multiply basis amount by percent."	projectServiceAutomation/QuoteLineTransaction
price	Enter the price on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
priceBase	Value of the Price in base currency.	projectServiceAutomation/QuoteLineTransaction
priceList	Select the price List used to default price on the estimate line.	projectServiceAutomation/QuoteLineTransaction
product	Select the product on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
project	Select the project being referenced by the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
quantity	Enter the quantity on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
quoteId	Select the denormalized reference to the quote. This is used for performance improvements and to allow the use of Power BI on a quote.	projectServiceAutomation/QuoteLineTransaction
resource	Select the role on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
resourceOrganizationalUnitId	Select the organizational unit of the resource who should perform the work.	projectServiceAutomation/QuoteLineTransaction
startDateTime	Enter the estimated start of the work being estimated on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
task	Select the project work breakdown structure (WBS) task referenced by the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
tax		projectServiceAutomation/QuoteLineTransaction
taxBase	Value of the tax in base currency.	projectServiceAutomation/QuoteLineTransaction
transaction	Select the  on the quote line estimate.	projectServiceAutomation/QuoteLineTransaction
transactionClassification	Transaction classification for the quote line	projectServiceAutomation/QuoteLineTransaction
transactionClassification_display		projectServiceAutomation/QuoteLineTransaction
transactionTypeCode	Shows the transaction type for this quote line.	projectServiceAutomation/QuoteLineTransaction
transactionTypeCode_display		projectServiceAutomation/QuoteLineTransaction
unit	Select the unit that the quantity is estimated in on this quote line estimate.	projectServiceAutomation/QuoteLineTransaction
unitSchedule	Select the unit schedule associated with the estimate line.	projectServiceAutomation/QuoteLineTransaction
vendorType		projectServiceAutomation/QuoteLineTransaction
vendorType_display		projectServiceAutomation/QuoteLineTransaction
amountAfterTax		projectServiceAutomation/QuoteLineTransaction
amountAfterTaxBase	Value of the amount_after_tax in base currency.	projectServiceAutomation/QuoteLineTransaction


*/