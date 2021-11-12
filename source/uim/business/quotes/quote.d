module uim.business.quotes.quote;

import uim.business;

@safe class DBUSQuote : DBUSObject {
    mixin(EntityThis!());
}
auto BUSQuote() { return new DBUSQuote; }
auto BUSQuote(UUID newId, string newName) { return new DBUSQuote(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuotes {
  mixin(IEIEntitiesRest!("Quote", "Quotes"));
}

@safe class DBUSQuotes : IBUSQuotes {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Quote", "Quotes"));
  mixin(OEntitiesRest!("Quote", "Quotes"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	sales/Quote
createdBy	Unique identifier of the user who created the record.	sales/Quote
modifiedOn	Date and time when the record was modified.	sales/Quote
modifiedBy	Unique identifier of the user who modified the record.	sales/Quote
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	sales/Quote
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	sales/Quote
overriddenCreatedOn	Date and time that the record was migrated.	sales/Quote
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	sales/Quote
ownerIdType	The type of owner, either User or Team.	sales/Quote
ownerId	Owner Id	sales/Quote
owningBusinessUnit	Unique identifier for the business unit that owns the record	sales/Quote
owningUser	Unique identifier of the user that owns the activity.	sales/Quote
owningTeam	Unique identifier for the team that owns the record.	sales/Quote
timeZoneRuleVersionNumber	For internal use only.	sales/Quote
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	sales/Quote
versionNumber	Version Number	sales/Quote
quoteId	Unique identifier of the quote.	sales/Quote
emailAddress	The primary email address for the entity.	sales/Quote
name	Type a descriptive name for the quote.	sales/Quote
processId	Contains the id of the process associated with the entity.	sales/Quote
stageId	Contains the id of the stage where the entity is located.	sales/Quote
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	sales/Quote
billToAddressId	Unique identifier of the billing address.	sales/Quote
billToCity	Type the city for the customer's billing address.	sales/Quote
billToComposite	Shows the complete Bill To address.	sales/Quote
billToContactName	Type the primary contact name at the customer's billing address.	sales/Quote
billToCountry	Type the country or region for the customer's billing address.	sales/Quote
billToFax	Type the fax number for the customer's billing address.	sales/Quote
billToLine1	Type the first line of the customer's billing address.	sales/Quote
billToLine2	Type the second line of the customer's billing address.	sales/Quote
billToLine3	Type the third line of the billing address.	sales/Quote
billToName	Type a name for the customer's billing address, such as "Headquarters" or "Field office", to identify the address.	sales/Quote
billToPostalCode	Type the ZIP Code or postal code for the billing address.	sales/Quote
billToStateOrProvince	Type the state or province for the billing address.	sales/Quote
billToTelephone	Type the phone number for the customer's billing address.	sales/Quote
closedOn	Enter the date when the quote was closed to indicate the expiration, revision, or cancellation date.	sales/Quote
customerIdType	The type of customer, either Account or Contact.	sales/Quote
customerId	The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.	sales/Quote
description	Type additional information to describe the quote, such as the products or services offered or details about the customer's product preferences.	sales/Quote
discountAmount	Type the discount amount for the quote if the customer is eligible for special savings.	sales/Quote
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	sales/Quote
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	sales/Quote
discountAmountBase	Value of the Quote Discount Amount in base currency.	sales/Quote
discountPercentage	Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the quote.	sales/Quote
effectiveFrom	Enter the date when the quote pricing is effective or was first communicated to the customer.	sales/Quote
effectiveTo	Enter the expiration date or last day the quote pricing is effective for the customer.	sales/Quote
expiresOn	Enter the date a decision or order is due from the customer to indicate the expiration date of the quote.	sales/Quote
freightAmount	Type the cost of freight or shipping for the products included in the quote for use in calculating the Total Amount field.	sales/Quote
freightAmountBase	Value of the Freight Amount in base currency.	sales/Quote
freightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	sales/Quote
freightTermsCode_display		sales/Quote
opportunityId	Choose the opportunity that the quote is related to for reporting and analytics.	sales/Quote
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	sales/Quote
paymentTermsCode_display		sales/Quote
priceLevelId	Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	sales/Quote
pricingErrorCode	Pricing error for the quote.	sales/Quote
pricingErrorCode_display		sales/Quote
quoteNumber	Shows the quote number for customer reference and searching capabilities. The number cannot be modified.	sales/Quote
requestDeliveryBy	Enter the delivery date requested by the customer for all products in the quote.	sales/Quote
revisionNumber	Shows the version number of the quote for revision history tracking.	sales/Quote
shippingMethodCode	Select a shipping method for deliveries sent to this address.	sales/Quote
shippingMethodCode_display		sales/Quote
shipToAddressId	Unique identifier of the shipping address.	sales/Quote
shipToCity	Type the city for the customer's shipping address.	sales/Quote
shipToComposite	Shows the complete Ship To address.	sales/Quote
shipToContactName	Type the primary contact name at the customer's shipping address.	sales/Quote
shipToCountry	Type the country or region for the customer's shipping address.	sales/Quote
shipToFax	Type the fax number for the customer's shipping address.	sales/Quote
shipToFreightTermsCode	Select the freight terms to make sure shipping orders are processed correctly.	sales/Quote
shipToFreightTermsCode_display		sales/Quote
shipToLine1	Type the first line of the customer's shipping address.	sales/Quote
shipToLine2	Type the second line of the customer's shipping address.	sales/Quote
shipToLine3	Type the third line of the shipping address.	sales/Quote
shipToName	Type a name for the customer's shipping address, such as "Headquarters" or "Field office", to identify the address.	sales/Quote
shipToPostalCode	Type the ZIP Code or postal code for the shipping address.	sales/Quote
shipToStateOrProvince	Type the state or province for the shipping address.	sales/Quote
shipToTelephone	Type the phone number for the customer's shipping address.	sales/Quote
stateCode	Shows whether the quote is draft, active, won, or closed. Only draft quotes can be edited.	sales/Quote
stateCode_display		sales/Quote
statusCode	Select the quote's status.	sales/Quote
statusCode_display		sales/Quote
totalAmount	Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the quote.	sales/Quote
totalAmountBase	Value of the Total Amount in base currency.	sales/Quote
totalAmountLessFreight	Shows the total product amount for the quote, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the quote.	sales/Quote
totalAmountLessFreightBase	Value of the Total Pre-Freight Amount in base currency.	sales/Quote
totalDiscountAmount	Shows the total discount amount, based on the discount price and rate entered on the quote.	sales/Quote
totalDiscountAmountBase	Value of the Total Discount Amount in base currency.	sales/Quote
totalLineItemAmount	Shows the sum of all existing and write-in products included on the quote, based on the specified price list and quantities.	sales/Quote
totalLineItemAmountBase	Value of the Total Detail Amount in base currency.	sales/Quote
totalLineItemDiscountAmount	Shows the total of the Manual Discount amounts specified on all products included in the quote. This value is reflected in the Detail Amount field on the quote and is added to any discount amount or rate specified on the quote	sales/Quote
totalLineItemDiscountAmountBase	Value of the Total Line Item Discount Amount in base currency.	sales/Quote
totalTax	Shows the total of the Tax amounts specified on all products included in the quote, included in the Total Amount due calculation for the quote.	sales/Quote
totalTaxBase	Value of the Total Tax in base currency.	sales/Quote
willCall	Select whether the products included in the quote should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.	sales/Quote
onHoldTime	Shows the duration in minutes for which the quote was on hold.	sales/Quote
lastOnHoldTime	Contains the date time stamp of the last on hold time.	sales/Quote
SLAId	Choose the service level agreement (SLA) that you want to apply to the quote record.	sales/Quote
SLAInvokedId	Last SLA that was applied to this quote. This field is for internal use only.	sales/Quote
accountId	Unique identifier of the account with which the quote is associated.	sales/Quote
contactId	Unique identifier of the contact associated with the quote.	sales/Quote
campaignId	Shows the campaign that the order was created from.	sales/Quote
accountManagerId	Account manager responsible for the quote.	projectServiceAutomation/Quote
contractOrganizationalUnitId	The organizational unit in charge of the contract.	projectServiceAutomation/Quote
feasible	Shows how the quote estimation compares to project estimation. Possible values are 0: Feasibility Not Available, 1: Feasible, and 2: Not Feasible.	projectServiceAutomation/Quote
feasible_display		projectServiceAutomation/Quote
orderType	Select whether the project contract is for an item-based or a work-based sale.	projectServiceAutomation/Quote
orderType_display		projectServiceAutomation/Quote
adjustedGrossMargin	Shows the estimated gross margin after accounting for non-chargeable components.	projectServiceAutomation/Quote
competitive	Shows how the quote estimation of sales value and schedule compare to customer expectations on those parameters. Possible values are 1: Within Customer expectations, 2: Not Within Customer expectations, and 0: Customer expectations Not Available.	projectServiceAutomation/Quote
competitive_display		projectServiceAutomation/Quote
customerBudgetRollUp	Shows the total customer budget for the quote, computed from all the quote lines.	projectServiceAutomation/Quote
customerBudgetRollupBase	Shows the value of the customer budget in the base currency.	projectServiceAutomation/Quote
estimatedBudget	Shows how the estimated sales value on the quote compares to customer budgets. Possible values are 1: Within Customer Budget, 2: Exceeds Customer Budget, 0: Budget Estimate Not Available	projectServiceAutomation/Quote
estimatedBudget_display		projectServiceAutomation/Quote
estimatedCompletionRollUp	Estimated completion date, computed from the details of each quote line.	projectServiceAutomation/Quote
estimatedSchedule	Shows how the estimated schedule on the quote compares to customer expectations. Possible values are 1: Estimated To Finish Early, 2: Estimated To Finish Late, 3: Estimated To Finish On Schedule, and 0: Schedule Not Available.	projectServiceAutomation/Quote
estimatedSchedule_display		projectServiceAutomation/Quote
grossMargin	Shows the estimated gross margin without accounting for non-chargeable components.	projectServiceAutomation/Quote
profitability	Shows the estimated profitability of the quote. Possible values are Profitable, Not Profitable, and Profitability not available.	projectServiceAutomation/Quote
profitability_display		projectServiceAutomation/Quote
totalChargeableCostRollup		projectServiceAutomation/Quote
totalChargeableCostRollupBase	Value of the Total Chargeable Cost in base currency.	projectServiceAutomation/Quote
totalNonchargeableCostRollup		projectServiceAutomation/Quote
totalNonchargeableCostRollupBase	Value of the Total Non-chargeable Cost in base currency.	projectServiceAutomation/Quote


*/