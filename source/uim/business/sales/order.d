module uim.business.sales.order;

import uim.business;

/// Quote that has been accepted.
class DBUSOrder : DBUSObject {

}

/*
Attributes
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
salesOrderId	Unique identifier of the order.	
emailAddress	The primary email address for the entity.			
processId	Contains the id of the process associated with the entity.	
stageId	Contains the id of the stage where the entity is located.	
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
billToAddressId	Unique identifier of the billing address.	
billToCity	Type the city for the customer's billing address.	
billToComposite	Shows the complete Bill To address.	
billToContactName	Type the primary contact name at the customer's billing address.	
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
dateFulfilled	Enter the date that all or part of the order was shipped to the customer.	
description	Type additional information to describe the order, such as the products or services offered or details about the customer's product preferences.	
discountAmount	Type the discount amount for the order if the customer is eligible for special savings.	
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
discountAmountBase	Value of the Order Discount Amount in base currency.	
discountPercentage	Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the order.	
freightAmount	Type the cost of freight or shipping for the products included in the order for use in calculating the Total Amount field.	
freightAmountBase	Value of the Freight Amount in base currency.	
freightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	
freightTermsCode_display		
isPriceLocked	Select whether prices specified on the invoice are locked from any further updates.	
lastBackofficeSubmit	Enter the date and time when the order was last submitted to an accounting or ERP system for processing.	
opportunityId	Choose the related opportunity so that the data for the order and opportunity are linked for reporting and analytics.	
orderNumber	Shows the order number for customer reference and to use in search. The number cannot be modified.	
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	
paymentTermsCode_display		
priceLevelId	Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	
pricingErrorCode	Select the type of pricing error, such as a missing or invalid product, or missing quantity.	
pricingErrorCode_display		
priorityCode	Select the priority so that preferred customers or critical issues are handled quickly.	
priorityCode_display		
quoteId	Choose the related quote so that order data and quote data are linked for reporting and analytics.	
requestDeliveryBy	Enter the delivery date requested by the customer for all products in the order.	
shippingMethodCode	Select a shipping method for deliveries sent to this address.	
shippingMethodCode_display		
shipToAddressId	Unique identifier of the shipping address.	
shipToCity	Type the city for the customer's shipping address.	
shipToComposite	Shows the complete Ship To address.	
shipToContactName	Type the primary contact name at the customer's shipping address.	
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
stateCode	Shows whether the order is active, submitted, fulfilled, canceled, or invoiced. Only active orders can be edited.	
stateCode_display		
statusCode	Select the order's status.	
statusCode_display		
submitDate	Enter the date when the order was submitted to the fulfillment or shipping center.	
submitStatus	Type the code for the submitted status in the fulfillment or shipping center system.	
submitStatusDescription	Type additional details or notes about the order for the fulfillment or shipping center.	
totalAmount	Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the order.	
totalAmountBase	Value of the Total Amount in base currency.	
totalAmountLessFreight	Shows the total product amount for the order, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the order.	
totalAmountLessFreightBase	Value of the Total Pre-Freight Amount in base currency.	
totalDiscountAmount	Shows the total discount amount, based on the discount price and rate entered on the order.	
totalDiscountAmountBase	Value of the Total Discount Amount in base currency.	
totalLineItemAmount	Shows the sum of all existing and write-in products included on the order, based on the specified price list and quantities.	
totalLineItemAmountBase	Value of the Total Detail Amount in base currency.	
totalLineItemDiscountAmount	Shows the total of the Manual Discount amounts specified on all products included in the order. This value is reflected in the Detail Amount field on the order and is added to any discount amount or rate specified on the order.	
totalLineItemDiscountAmountBase	Value of the Total Line Item Discount Amount in base currency.	
totalTax	Shows the Tax amounts specified on all products included in the order, included in the Total Amount due calculation for the order.	
totalTaxBase	Value of the Total Tax in base currency.	
willCall	Select whether the products included in the order should be shipped to the specified address or held until the customer calls with further pick-up or delivery instructions.	
onHoldTime	Shows the duration in minutes for which the order was on hold.	
lastOnHoldTime	Contains the date time stamp of the last on hold time.	
SLAId	Choose the service level agreement (SLA) that you want to apply to the sales order record.	
SLAInvokedId	Last SLA that was applied to this sales order. This field is for internal use only.	
entityImageId		
accountId	Shows the parent account related to the record. This information is used to link the sales order to the account selected in the Customer field for reporting and analytics.	
contactId	Shows the parent contact related to the record. This information is used to link the contract to the contact selected in the Customer field for reporting and analytics.	
campaignId	Shows the campaign that the order was created from.	
createdOn

*/