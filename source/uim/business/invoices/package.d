module uim.business.invoices;

public {
  import uim.business.invoices.frequency;
  import uim.business.invoices.frequencydetail;
  import uim.business.invoices.invoice;
  import uim.business.invoices.linetransaction;
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	sales/Invoice
createdBy	Unique identifier of the user who created the record.	sales/Invoice
modifiedOn	Date and time when the record was modified.	sales/Invoice
modifiedBy	Unique identifier of the user who modified the record.	sales/Invoice
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	sales/Invoice
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	sales/Invoice
overriddenCreatedOn	Date and time that the record was migrated.	sales/Invoice
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	sales/Invoice
ownerIdType	The type of owner, either User or Team.	sales/Invoice
ownerId	Owner Id	sales/Invoice
owningBusinessUnit	Unique identifier for the business unit that owns the record	sales/Invoice
owningUser	Unique identifier of the user that owns the activity.	sales/Invoice
owningTeam	Unique identifier for the team that owns the record.	sales/Invoice
timeZoneRuleVersionNumber	For internal use only.	sales/Invoice
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	sales/Invoice
versionNumber	Version Number	sales/Invoice
invoiceId	Unique identifier of the invoice.	sales/Invoice
emailAddress	The primary email address for the entity.	sales/Invoice
name	Type a descriptive name for the invoice.	sales/Invoice
processId	Contains the id of the process associated with the entity.	sales/Invoice
stageId	Contains the id of the stage where the entity is located.	sales/Invoice
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	sales/Invoice
billToCity	Type the city for the customer's billing address.	sales/Invoice
billToComposite	Shows the complete Bill To address.	sales/Invoice
billToCountry	Type the country or region for the customer's billing address.	sales/Invoice
billToFax	Type the fax number for the customer's billing address.	sales/Invoice
billToLine1	Type the first line of the customer's billing address.	sales/Invoice
billToLine2	Type the second line of the customer's billing address.	sales/Invoice
billToLine3	Type the third line of the billing address.	sales/Invoice
billToName	Type a name for the customer's billing address, such as "Headquarters" or "Field office", to identify the address.	sales/Invoice
billToPostalCode	Type the ZIP Code or postal code for the billing address.	sales/Invoice
billToStateOrProvince	Type the state or province for the billing address.	sales/Invoice
billToTelephone	Type the phone number for the customer's billing address.	sales/Invoice
customerIdType	The type of customer, either Account or Contact.	sales/Invoice
customerId	The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.	sales/Invoice
dateDelivered	Enter the date when the products included in the invoice were delivered.	sales/Invoice
description	Type additional information to describe the invoice, such as shipping details or product substitutions.	sales/Invoice
discountAmount	Type the discount amount for the invoice if the customer is eligible for special savings.	sales/Invoice
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	sales/Invoice
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	sales/Invoice
discountAmountBase	Value of the Invoice Discount Amount in base currency.	sales/Invoice
discountPercentage	Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the invoice.	sales/Invoice
dueDate	Enter the date by which the invoice should be paid by the customer.	sales/Invoice
freightAmount	Type the cost of freight or shipping for the products included in the invoice for use in calculating the total amount due.	sales/Invoice
freightAmountBase	Value of the Freight Amount in base currency.	sales/Invoice
invoiceNumber	Shows the identifying number or code of the invoice.	sales/Invoice
isPriceLocked	Select whether prices specified on the invoice are locked from any further updates.	sales/Invoice
lastBackofficeSubmit	Enter the date and time when the invoice was last submitted to an accounting or ERP system for processing.	sales/Invoice
opportunityId	Choose the opportunity that the invoice is related to for reporting and analytics.	sales/Invoice
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	sales/Invoice
paymentTermsCode_display		sales/Invoice
priceLevelId	Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	sales/Invoice
pricingErrorCode	Type of pricing error for the invoice.	sales/Invoice
pricingErrorCode_display		sales/Invoice
priorityCode	Select the priority so that preferred customers or critical issues are handled quickly.	sales/Invoice
priorityCode_display		sales/Invoice
salesOrderId	Choose the order related to the invoice to make sure the order is fulfilled and invoiced correctly.	sales/Invoice
shippingMethodCode	Select a shipping method for deliveries sent to this address.	sales/Invoice
shippingMethodCode_display		sales/Invoice
shipToCity	Type the city for the customer's shipping address.	sales/Invoice
shipToComposite	Shows the complete Ship To address.	sales/Invoice
shipToCountry	Type the country or region for the customer's shipping address.	sales/Invoice
shipToFax	Type the fax number for the customer's shipping address.	sales/Invoice
shipToFreightTermsCode	Select the freight terms to make sure shipping orders are processed correctly.	sales/Invoice
shipToFreightTermsCode_display		sales/Invoice
shipToLine1	Type the first line of the customer's shipping address.	sales/Invoice
shipToLine2	Type the second line of the customer's shipping address.	sales/Invoice
shipToLine3	Type the third line of the shipping address.	sales/Invoice
shipToName	Type a name for the customer's shipping address, such as "Headquarters" or "Field office", to identify the address.	sales/Invoice
shipToPostalCode	Type the ZIP Code or postal code for the shipping address.	sales/Invoice
shipToStateOrProvince	Type the state or province for the shipping address.	sales/Invoice
shipToTelephone	Type the phone number for the customer's shipping address.	sales/Invoice
stateCode	Shows whether the invoice is active, paid, or canceled. Paid and canceled invoices are read-only and can't be edited unless they are reactivated.	sales/Invoice
stateCode_display		sales/Invoice
statusCode	Select the invoice's status.	sales/Invoice
statusCode_display		sales/Invoice
totalAmount	Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the invoice.	sales/Invoice
totalAmountBase	Value of the Total Amount in base currency.	sales/Invoice
totalAmountLessFreight	Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the invoice.	sales/Invoice
totalAmountLessFreightBase	Value of the Total Pre-Freight Amount in base currency.	sales/Invoice
totalDiscountAmount	Shows the total discount amount, based on the discount price and rate entered on the invoice.	sales/Invoice
totalDiscountAmountBase	Value of the Total Discount Amount in base currency.	sales/Invoice
totalLineItemAmount	Shows the sum of all existing and write-in products included on the invoice, based on the specified price list and quantities.	sales/Invoice
totalLineItemAmountBase	Value of the Total Detail Amount in base currency.	sales/Invoice
totalLineItemDiscountAmount	Shows the Manual Discount amounts specified on all products included in the invoice. This value is reflected in the Detail Amount field on the invoice and is added to any discount amount or rate specified on the invoice.	sales/Invoice
totalLineItemDiscountAmountBase	Value of the Total Line Item Discount Amount in base currency.	sales/Invoice
totalTax	Shows the total of the Tax amounts specified on all products included in the invoice, included in the Total Amount due calculation for the invoice.	sales/Invoice
totalTaxBase	Value of the Total Tax in base currency.	sales/Invoice
willCall	Select whether the products included in the invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.	sales/Invoice
SLAId	Choose the service level agreement (SLA) that you want to apply to the invoice record.	sales/Invoice
SLAInvokedId	Last SLA that was applied to this invoice. This field is for internal use only.	sales/Invoice
onHoldTime	Shows the duration in minutes for which the invoice was on hold.	sales/Invoice
lastOnHoldTime	Contains the date time stamp of the last on hold time.	sales/Invoice
entityImageId		sales/Invoice
accountId	Unique identifier of the account with which the invoice is associated.	sales/Invoice
contactId	Unique identifier of the contact associated with the invoice.	sales/Invoice
billToContactName	Type the primary contact name at the customer's billing address.	projectServiceAutomation/Invoice
hasCorrections	Indicates if this invoice contains corrections to previous invoices.	projectServiceAutomation/Invoice
orderType	Whether the invoice is for an Item- based Order or a Work-based Project Contract	projectServiceAutomation/Invoice
orderType_display		projectServiceAutomation/Invoice
projectInvoiceStatus	Project specific status	projectServiceAutomation/Invoice
projectInvoiceStatus_display		projectServiceAutomation/Invoice

*/