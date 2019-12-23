module uim.business.opportunities.lines.transactions.transaction;

import uim.business;

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/OpportunityLineTransaction
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/OpportunityLineTransaction
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/OpportunityLineTransaction
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/OpportunityLineTransaction
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/OpportunityLineTransaction
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/OpportunityLineTransaction
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/OpportunityLineTransaction
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/OpportunityLineTransaction
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/OpportunityLineTransaction
ownerId	Owner Id	projectServiceAutomation/OpportunityLineTransaction
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/OpportunityLineTransaction
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/OpportunityLineTransaction
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/OpportunityLineTransaction
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/OpportunityLineTransaction
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/OpportunityLineTransaction
versionNumber	Version Number	projectServiceAutomation/OpportunityLineTransaction
opportunityLineTransactionId	Shows the entity instances.	projectServiceAutomation/OpportunityLineTransaction
stateCode	Status of the Opportunity Line Detail	projectServiceAutomation/OpportunityLineTransaction
stateCode_display		projectServiceAutomation/OpportunityLineTransaction
statusCode	Reason for the status of the Opportunity Line Detail	projectServiceAutomation/OpportunityLineTransaction
statusCode_display		projectServiceAutomation/OpportunityLineTransaction
description	Type a description of the opportunity line estimate.	projectServiceAutomation/OpportunityLineTransaction
accountCustomer	Select the name of the customer to which this opportunity belongs.	projectServiceAutomation/OpportunityLineTransaction
accountingDate		projectServiceAutomation/OpportunityLineTransaction
accountVendor		projectServiceAutomation/OpportunityLineTransaction
amount	Enter the amount on the estimate line.	projectServiceAutomation/OpportunityLineTransaction
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/OpportunityLineTransaction
exchangeRate	Exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/OpportunityLineTransaction
amountBase	Value of the Amount in base currency.	projectServiceAutomation/OpportunityLineTransaction
amountMethod	Select the calculation method used to determine the amount on the estimate line.	projectServiceAutomation/OpportunityLineTransaction
amountMethod_display		projectServiceAutomation/OpportunityLineTransaction
basisAmount		projectServiceAutomation/OpportunityLineTransaction
basisAmountBase	Value of the Basis Amount in base currency.	projectServiceAutomation/OpportunityLineTransaction
basisPrice		projectServiceAutomation/OpportunityLineTransaction
basisPriceBase	Value of the Basis Price in base currency.	projectServiceAutomation/OpportunityLineTransaction
basisQuantity	Enter the quantity used as basis for calculating quantity on this estimate line.	projectServiceAutomation/OpportunityLineTransaction
billingType	Select whether this estimate line would be charged to the customer or not. Only chargeable transactions will add to the invoice total when an invoices are created	projectServiceAutomation/OpportunityLineTransaction
billingType_display		projectServiceAutomation/OpportunityLineTransaction
bookableResource	Shows the resource.	projectServiceAutomation/OpportunityLineTransaction
contactCustomer	Select the customer contact of this opportunity.	projectServiceAutomation/OpportunityLineTransaction
contactVendor		projectServiceAutomation/OpportunityLineTransaction
customerType	Select whether the customer identified on the opportunity was an account or a contact	projectServiceAutomation/OpportunityLineTransaction
customerType_display		projectServiceAutomation/OpportunityLineTransaction
documentDate	Enter the document date. The document date is only relevant for actuals and invoiced transactions; does not apply to opportunity line estimates.	projectServiceAutomation/OpportunityLineTransaction
endDateTime	Enter the end time of the opportunity line estimate.	projectServiceAutomation/OpportunityLineTransaction
exchangeRateDate		projectServiceAutomation/OpportunityLineTransaction
opportunityLine	Shows the opportunity line that this estimate line belongs to.	projectServiceAutomation/OpportunityLineTransaction
percent	Relevant when amount calculation method on the opportunity line transactions is "Multiply basis amount by percent"	projectServiceAutomation/OpportunityLineTransaction
price	Enter the price on the estimate line.	projectServiceAutomation/OpportunityLineTransaction
priceBase	Value of the Price in base currency.	projectServiceAutomation/OpportunityLineTransaction
priceList	Select the price list used on the opportunity line estimate.	projectServiceAutomation/OpportunityLineTransaction
product	Select the product on the estimate line.	projectServiceAutomation/OpportunityLineTransaction
project	Select the name of the Project that this estimate line is for.	projectServiceAutomation/OpportunityLineTransaction
quantity	Enter the quantity of the opportunity estimate line.	projectServiceAutomation/OpportunityLineTransaction
resourceCategory	Select the role that is estimated to perform the work.	projectServiceAutomation/OpportunityLineTransaction
resourceOrganizationalUnitId	Select the organizational unit of the resource who is estimated to perform the work.	projectServiceAutomation/OpportunityLineTransaction
startDateTime	Enter the start date of the opportunity line estimate.	projectServiceAutomation/OpportunityLineTransaction
task	Select the name of the project task for which this estimate line was created.	projectServiceAutomation/OpportunityLineTransaction
transactionCategory	Select the category of the transaction.	projectServiceAutomation/OpportunityLineTransaction
transactionClassification	Transaction classification of the Opportunity line transaction	projectServiceAutomation/OpportunityLineTransaction
transactionClassification_display		projectServiceAutomation/OpportunityLineTransaction
transactionTypeCode	Transaction type for the opportunity line.	projectServiceAutomation/OpportunityLineTransaction
transactionTypeCode_display		projectServiceAutomation/OpportunityLineTransaction
unit	Select the unit of the estimate quantity.	projectServiceAutomation/OpportunityLineTransaction
unitSchedule	Select the unit group of the opportunity line estimate.	projectServiceAutomation/OpportunityLineTransaction
vendorType		projectServiceAutomation/OpportunityLineTransaction
vendorType_display		projectServiceAutomation/OpportunityLineTransaction

*/