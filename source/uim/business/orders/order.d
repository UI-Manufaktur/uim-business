module uim.business.orders.order;

import uim.business;

@safe class DBUSOrder : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSOrder() { return new DBUSOrder; }
auto BUSOrder(UUID newId, string newName) { return new DBUSOrder(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSOrders {
  mixin(IEIEntitiesRest!("Order", "Orders"));
}

@safe class DBUSOrders : IBUSOrders {
  mixin(OEntitiesInner!("Order", "Orders"));
  mixin(OEntitiesRest!("Order", "Orders"));
}
/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	sales/Order
createdBy	Unique identifier of the user who created the record.	sales/Order
modifiedOn	Date and time when the record was modified.	sales/Order
modifiedBy	Unique identifier of the user who modified the record.	sales/Order
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	sales/Order
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	sales/Order
overriddenCreatedOn	Date and time that the record was migrated.	sales/Order
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	sales/Order
ownerIdType	The type of owner, either User or Team.	sales/Order
ownerId	Owner Id	sales/Order
owningBusinessUnit	Unique identifier for the business unit that owns the record	sales/Order
owningUser	Unique identifier of the user that owns the activity.	sales/Order
owningTeam	Unique identifier for the team that owns the record.	sales/Order
timeZoneRuleVersionNumber	For internal use only.	sales/Order
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	sales/Order
versionNumber	Version Number	sales/Order
salesOrderId	Unique identifier of the order.	sales/Order
emailAddress	The primary email address for the entity.	sales/Order
name	Type a descriptive name for the order.	sales/Order
processId	Contains the id of the process associated with the entity.	sales/Order
stageId	Contains the id of the stage where the entity is located.	sales/Order
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	sales/Order
billToAddressId	Unique identifier of the billing address.	sales/Order
billToCity	Type the city for the customer's billing address.	sales/Order
billToComposite	Shows the complete Bill To address.	sales/Order
billToContactName	Type the primary contact name at the customer's billing address.	sales/Order
billToCountry	Type the country or region for the customer's billing address.	sales/Order
billToFax	Type the fax number for the customer's billing address.	sales/Order
billToLine1	Type the first line of the customer's billing address.	sales/Order
billToLine2	Type the second line of the customer's billing address.	sales/Order
billToLine3	Type the third line of the billing address.	sales/Order
billToName	Type a name for the customer's billing address, such as "Headquarters" or "Field office", to identify the address.	sales/Order
billToPostalCode	Type the ZIP Code or postal code for the billing address.	sales/Order
billToStateOrProvince	Type the state or province for the billing address.	sales/Order
billToTelephone	Type the phone number for the customer's billing address.	sales/Order
customerIdType	The type of customer, either Account or Contact.	sales/Order
customerId	The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and orders.	sales/Order
dateFulfilled	Enter the date that all or part of the order was shipped to the customer.	sales/Order
description	Type additional information to describe the order, such as the products or services offered or details about the customer's product preferences.	sales/Order
discountAmount	Type the discount amount for the order if the customer is eligible for special savings.	sales/Order
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	sales/Order
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	sales/Order
discountAmountBase	Value of the Order Discount Amount in base currency.	sales/Order
discountPercentage	Type the discount rate that should be applied to the Detail Amount field to include additional savings for the customer in the order.	sales/Order
freightAmount	Type the cost of freight or shipping for the products included in the order for use in calculating the Total Amount field.	sales/Order
freightAmountBase	Value of the Freight Amount in base currency.	sales/Order
freightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	sales/Order
freightTermsCode_display		sales/Order
isPriceLocked	Select whether prices specified on the invoice are locked from any further updates.	sales/Order
lastBackofficeSubmit	Enter the date and time when the order was last submitted to an accounting or ERP system for processing.	sales/Order
orderId	Choose the related order so that the data for the order and order are linked for reporting and analytics.	sales/Order
orderNumber	Shows the order number for customer reference and to use in search. The number cannot be modified.	sales/Order
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	sales/Order
paymentTermsCode_display		sales/Order
priceLevelId	Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	sales/Order
pricingErrorCode	Select the type of pricing error, such as a missing or invalid product, or missing quantity.	sales/Order
pricingErrorCode_display		sales/Order
priorityCode	Select the priority so that preferred customers or critical issues are handled quickly.	sales/Order
priorityCode_display		sales/Order
quoteId	Choose the related quote so that order data and quote data are linked for reporting and analytics.	sales/Order
requestDeliveryBy	Enter the delivery date requested by the customer for all products in the order.	sales/Order
shippingMethodCode	Select a shipping method for deliveries sent to this address.	sales/Order
shippingMethodCode_display		sales/Order
shipToAddressId	Unique identifier of the shipping address.	sales/Order
shipToCity	Type the city for the customer's shipping address.	sales/Order
shipToComposite	Shows the complete Ship To address.	sales/Order
shipToContactName	Type the primary contact name at the customer's shipping address.	sales/Order
shipToCountry	Type the country or region for the customer's shipping address.	sales/Order
shipToFax	Type the fax number for the customer's shipping address.	sales/Order
shipToFreightTermsCode	Select the freight terms to make sure shipping orders are processed correctly.	sales/Order
shipToFreightTermsCode_display		sales/Order
shipToLine1	Type the first line of the customer's shipping address.	sales/Order
shipToLine2	Type the second line of the customer's shipping address.	sales/Order
shipToLine3	Type the third line of the shipping address.	sales/Order
shipToName	Type a name for the customer's shipping address, such as "Headquarters" or "Field office", to identify the address.	sales/Order
shipToPostalCode	Type the ZIP Code or postal code for the shipping address.	sales/Order
shipToStateOrProvince	Type the state or province for the shipping address.	sales/Order
shipToTelephone	Type the phone number for the customer's shipping address.	sales/Order
stateCode	Shows whether the order is active, submitted, fulfilled, canceled, or invoiced. Only active orders can be edited.	sales/Order
stateCode_display		sales/Order
statusCode	Select the order's status.	sales/Order
statusCode_display		sales/Order
submitDate	Enter the date when the order was submitted to the fulfillment or shipping center.	sales/Order
submitStatus	Type the code for the submitted status in the fulfillment or shipping center system.	sales/Order
submitStatusDescription	Type additional details or notes about the order for the fulfillment or shipping center.	sales/Order
totalAmount	Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the order.	sales/Order
totalAmountBase	Value of the Total Amount in base currency.	sales/Order
totalAmountLessFreight	Shows the total product amount for the order, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the order.	sales/Order
totalAmountLessFreightBase	Value of the Total Pre-Freight Amount in base currency.	sales/Order
totalDiscountAmount	Shows the total discount amount, based on the discount price and rate entered on the order.	sales/Order
totalDiscountAmountBase	Value of the Total Discount Amount in base currency.	sales/Order
totalLineItemAmount	Shows the sum of all existing and write-in products included on the order, based on the specified price list and quantities.	sales/Order
totalLineItemAmountBase	Value of the Total Detail Amount in base currency.	sales/Order
totalLineItemDiscountAmount	Shows the total of the Manual Discount amounts specified on all products included in the order. This value is reflected in the Detail Amount field on the order and is added to any discount amount or rate specified on the order.	sales/Order
totalLineItemDiscountAmountBase	Value of the Total Line Item Discount Amount in base currency.	sales/Order
totalTax	Shows the Tax amounts specified on all products included in the order, included in the Total Amount due calculation for the order.	sales/Order
totalTaxBase	Value of the Total Tax in base currency.	sales/Order
willCall	Select whether the products included in the order should be shipped to the specified address or held until the customer calls with further pick-up or delivery instructions.	sales/Order
onHoldTime	Shows the duration in minutes for which the order was on hold.	sales/Order
lastOnHoldTime	Contains the date time stamp of the last on hold time.	sales/Order
SLAId	Choose the service level agreement (SLA) that you want to apply to the sales order record.	sales/Order
SLAInvokedId	Last SLA that was applied to this sales order. This field is for internal use only.	sales/Order
entityImageId		sales/Order
accountId	Shows the parent account related to the record. This information is used to link the sales order to the account selected in the Customer field for reporting and analytics.	sales/Order
contactId	Shows the parent contact related to the record. This information is used to link the contract to the contact selected in the Customer field for reporting and analytics.	sales/Order
campaignId	Shows the campaign that the order was created from.	sales/Order
accountManagerId	User responsible for managing the account referenced by this contract.	projectServiceAutomation/Order
contractOrganizationalUnitId	Organizational unit responsible for this contract.	projectServiceAutomation/Order
orderType	Whether it is for an Item- based or a Work-based sale	projectServiceAutomation/Order
orderType_display		projectServiceAutomation/Order
PSAState	Shows the current state of the project contract.	projectServiceAutomation/Order
PSAState_display		projectServiceAutomation/Order
PSAStatusReason	Shows the reason for the project contract status.	projectServiceAutomation/Order
PSAStatusReason_display		projectServiceAutomation/Order
totalChargeableCostRollup	Value of the estimated chargeable cost.	projectServiceAutomation/Order
totalChargeableCostRollupBase	Value of the Total Chargeable Cost in base currency.	projectServiceAutomation/Order
totalNonchargeableCostRollup	Total estimated cost that will not be charged to the customer.	projectServiceAutomation/Order
totalNonchargeableCostRollupBase	Value of the Total Non-chargeable Cost in base currency.	projectServiceAutomation/Order


*/