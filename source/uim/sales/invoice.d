module uim.business.sales.invoice;

import uim.business;

/// Order that has been billed.
class DBUSInvoice : DBUSObject {

}

/*
Name	Description	First Included in Instance

createdOnBehalfBy	Unique identifier of the delegate user who created the record.	
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	
overriddenCreatedOn	Date and time that the record was migrated.	
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	
ownerIdType	The type of owner, either User or Team.	
ownerId	Owner Id	
owningBusinessUnit	Unique identifier for the business unit that owns the record	
owningUser	Unique identifier of the user that owns the activity.	
owningTeam	Unique identifier for the team that owns the record.	
timeZoneRuleVersionNumber	For internal use only.	
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	
versionNumber	Version Number	

emailAddress	The primary email address for the entity.	
name	Type a descriptive name for the invoice.	
processId	Contains the id of the process associated with the entity.	
stageId	Contains the id of the stage where the entity is located.	
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
billToCity	Type the city for the customer's billing address.	
billToComposite	Shows the complete Bill To address.	
billToCountry	Type the country or region for the customer's billing address.	
billToFax	Type the fax number for the customer's billing address.	
billToLine1	Type the first line of the customer's billing address.	
billToLine2	Type the second line of the customer's billing address.	
billToLine3	Type the third line of the billing address.	
billToName	Type a name for the customer's billing address, such as "Headquarters" or "Field office", to identify the address.	
billToPostalCode	Type the ZIP Code or postal code for the billing address.	
billToStateOrProvince	Type the state or province for the billing address.	
billToTelephone	Type the phone number for the customer's billing address.	
customerIdType	The type of customer, either Account or Contact.	
customerId	The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.	
dateDelivered	Enter the date when the products included in the invoice were delivered.	
description	Type additional information to describe the invoice, such as shipping details or product substitutions.	
discountAmount	Type the discount amount for the invoice if the customer is eligible for special savings.	
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
discountAmountBase	Value of the Invoice Discount Amount in base currency.	
discountPercentage	Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the invoice.	
dueDate	Enter the date by which the invoice should be paid by the customer.	
freightAmount	Type the cost of freight or shipping for the products included in the invoice for use in calculating the total amount due.	
freightAmountBase	Value of the Freight Amount in base currency.	
invoiceNumber	Shows the identifying number or code of the invoice.	
isPriceLocked	Select whether prices specified on the invoice are locked from any further updates.	
lastBackofficeSubmit	Enter the date and time when the invoice was last submitted to an accounting or ERP system for processing.	
opportunityId	Choose the opportunity that the invoice is related to for reporting and analytics.	
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	
paymentTermsCode_display		
priceLevelId	Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	
pricingErrorCode	Type of pricing error for the invoice.	
pricingErrorCode_display		
priorityCode	Select the priority so that preferred customers or critical issues are handled quickly.	
priorityCode_display		
salesOrderId	Choose the order related to the invoice to make sure the order is fulfilled and invoiced correctly.	
shippingMethodCode	Select a shipping method for deliveries sent to this address.	
shippingMethodCode_display		
shipToCity	Type the city for the customer's shipping address.	
shipToComposite	Shows the complete Ship To address.	
shipToCountry	Type the country or region for the customer's shipping address.	
shipToFax	Type the fax number for the customer's shipping address.	
shipToFreightTermsCode	Select the freight terms to make sure shipping orders are processed correctly.	
shipToFreightTermsCode_display		
shipToLine1	Type the first line of the customer's shipping address.	
shipToLine2	Type the second line of the customer's shipping address.	
shipToLine3	Type the third line of the shipping address.	
shipToName	Type a name for the customer's shipping address, such as "Headquarters" or "Field office", to identify the address.	
shipToPostalCode	Type the ZIP Code or postal code for the shipping address.	
shipToStateOrProvince	Type the state or province for the shipping address.	
shipToTelephone	Type the phone number for the customer's shipping address.	
stateCode	Shows whether the invoice is active, paid, or canceled. Paid and canceled invoices are read-only and can't be edited unless they are reactivated.	
stateCode_display		
statusCode	Select the invoice's status.	
statusCode_display		
totalAmount	Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the invoice.	
totalAmountBase	Value of the Total Amount in base currency.	
totalAmountLessFreight	Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the invoice.	
totalAmountLessFreightBase	Value of the Total Pre-Freight Amount in base currency.	
totalDiscountAmount	Shows the total discount amount, based on the discount price and rate entered on the invoice.	
totalDiscountAmountBase	Value of the Total Discount Amount in base currency.	
totalLineItemAmount	Shows the sum of all existing and write-in products included on the invoice, based on the specified price list and quantities.	
totalLineItemAmountBase	Value of the Total Detail Amount in base currency.	
totalLineItemDiscountAmount	Shows the Manual Discount amounts specified on all products included in the invoice. This value is reflected in the Detail Amount field on the invoice and is added to any discount amount or rate specified on the invoice.	
totalLineItemDiscountAmountBase	Value of the Total Line Item Discount Amount in base currency.	
totalTax	Shows the total of the Tax amounts specified on all products included in the invoice, included in the Total Amount due calculation for the invoice.	
totalTaxBase	Value of the Total Tax in base currency.	
willCall	Select whether the products included in the invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.	
SLAId	Choose the service level agreement (SLA) that you want to apply to the invoice record.	
SLAInvokedId	Last SLA that was applied to this invoice. This field is for internal use only.	
onHoldTime	Shows the duration in minutes for which the invoice was on hold.	
lastOnHoldTime	Contains the date time stamp of the last on hold time.	
entityImageId		
accountId	Unique identifier of the account with which the invoice is associated.	
contactId	Unique identifier of the contact associated with the invoice.	
billToContactName	Type the primary contact name at the customer's billing address.	projectServiceAutomation/Invoice
hasCorrections	Indicates if this invoice contains corrections to previous invoices.	projectServiceAutomation/Invoice
orderType	Whether the invoice is for an Item- based Order or a Work-based Project Contract	projectServiceAutomation/Invoice
orderType_display		projectServiceAutomation/Invoice
projectInvoiceStatus	Project specific status	projectServiceAutomation/Invoice
projectInvoiceStatus_display		projectServiceAutomation/Invoice
*/