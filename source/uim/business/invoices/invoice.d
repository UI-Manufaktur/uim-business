module uim.business.invoices.invoice;

import uim.business;

@safe class DBUSInvoice : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
  this(DBUSStore newStore, UUID newId, string newName) { super(newStore, newId, newName); }
  
  /// The primary email address for the entity.
  mixin(OString!"emailAddress");	
  /// Contains the id of the process associated with the entity.	
  mixin(OUuid!"processId");
  /// Contains the id of the stage where the entity is located.
  mixin(OUuid!"stageId");
  /// Type the city for the customer's billing address.
  mixin(OString!"billToCity");	
  /// Shows the complete Bill To address.	
  mixin(OString!"billToComposite");
  /// Type the country or region for the customer's billing address.		
  mixin(OString!"billToCountry");
  /// Type the fax number for the customer's billing address.		
  mixin(OString!"billToFax");		
  /// Type the first line of the customer's billing address.
  mixin(OString!"billToLine1");	
  /// Type the second line of the customer's billing address.	
  mixin(OString!"billToLine2");	
  /// Type the third line of the billing address.	
  mixin(OString!"billToLine3");	
  /// Type a name for the customer's billing address, such as "Headquarters" or "Field office", to identify the address.	
  mixin(OString!"billToName");		
  /// Type the ZIP Code or postal code for the billing address.
  mixin(OString!"billToPostalCode");		
  /// Type the state or province for the billing address.
  mixin(OString!"billToStateOrProvince");		
  //// Type the phone number for the customer's billing address.
  mixin(OString!"billToTelephone");		
  /// The type of customer, either Account or Contact.
  mixin(OString!"customerIdType");
  /// The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and Invoices.			
  mixin(OString!"customerId");			
  auto customer() { if (_store) return _store.customers[this.invoiceId]; return null; }
  /// Select the payment terms to indicate when the customer needs to pay the total amount.	

  /// Enter the date when the products included in the Invoice were delivered.
  mixin(OString!"dateDelivered");	
  /// Type the discount amount for the Invoice if the customer is eligible for special savings.	
  mixin(OString!"discountAmount");		
  /// Choose the local currency for the record to make sure budgets are reported in the correct currency.
  mixin(OString!"transactionCurrencyId");
  /// Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.			
  mixin(OString!"exchangeRate");	
  /// Value of the Invoice Discount Amount in base currency.			
  mixin(OString!"discountAmountBase");		
  /// Type the discount rate that should be applied to the Detail Amount field, for use in calculating the Pre-Freight Amount and Total Amount values for the Invoice.
  mixin(OString!"discountPercentage");
  /// Enter the date by which the Invoice should be paid by the customer.				
  mixin(OString!"dueDate");		
  /// Type the cost of freight or shipping for the products included in the Invoice for use in calculating the total amount due.
  mixin(OString!"freightAmount");			
  /// Value of the Freight Amount in base currency.	
  mixin(OString!"freightAmountBase");
  /// Shows the identifying number or code of the Invoice.		
  mixin(OString!"InvoiceNumber");		
  /// Select whether prices specified on the Invoice are locked from any further updates.	
  mixin(OString!"isPriceLocked");			
  /// Enter the date and time when the Invoice was last submitted to an accounting or ERP system for processing.
  mixin(OString!"lastBackofficeSubmit");			
  /// Choose the Invoice that the Invoice is related to for reporting and analytics.
  mixin(OString!"invoiceId");			
  auto invoice() { if (_store) return _store.invoices[this.invoiceId]; return null; }
  /// Select the payment terms to indicate when the customer needs to pay the total amount.	
  mixin(OString!"paymentTermsCode");		
  mixin(OString!"paymentTermsCode_display");			
}
auto BUSInvoice() { return new DBUSInvoice; }
auto BUSInvoice(UUID newId, string newName) { return new DBUSInvoice(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSInvoices {
  mixin(IEIEntitiesRest!("Invoice", "Invoices"));
}

@safe class DBUSInvoices : IBUSInvoices {
  mixin(OEntitiesInner!("Invoice", "Invoices"));
  mixin(OEntitiesRest!("Invoice", "Invoices"));
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
versionNumber	Version Number	
InvoiceId	Unique identifier of the Invoice.	
emailAddress	The primary email address for the entity.	
name	Type a descriptive name for the Invoice.	
processId	Contains the id of the process associated with the entity.	
stageId	Contains the id of the stage where the entity is located.	
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	


priceLevelId	Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	
pricingErrorCode	Type of pricing error for the Invoice.	
pricingErrorCode_display		
priorityCode	Select the priority so that preferred customers or critical issues are handled quickly.	
priorityCode_display		
salesOrderId	Choose the order related to the Invoice to make sure the order is fulfilled and Invoiced correctly.	
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
stateCode	Shows whether the Invoice is active, paid, or canceled. Paid and canceled Invoices are read-only and can't be edited unless they are reactivated.	
stateCode_display		
statusCode	Select the Invoice's status.	
statusCode_display		
totalAmount	Shows the total amount due, calculated as the sum of the products, discount, freight, and taxes for the Invoice.	
totalAmountBase	Value of the Total Amount in base currency.	
totalAmountLessFreight	Shows the total product amount due, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount due for the Invoice.	
totalAmountLessFreightBase	Value of the Total Pre-Freight Amount in base currency.	
totalDiscountAmount	Shows the total discount amount, based on the discount price and rate entered on the Invoice.	
totalDiscountAmountBase	Value of the Total Discount Amount in base currency.	
totalLineItemAmount	Shows the sum of all existing and write-in products included on the Invoice, based on the specified price list and quantities.	
totalLineItemAmountBase	Value of the Total Detail Amount in base currency.	
totalLineItemDiscountAmount	Shows the Manual Discount amounts specified on all products included in the Invoice. This value is reflected in the Detail Amount field on the Invoice and is added to any discount amount or rate specified on the Invoice.	
totalLineItemDiscountAmountBase	Value of the Total Line Item Discount Amount in base currency.	
totalTax	Shows the total of the Tax amounts specified on all products included in the Invoice, included in the Total Amount due calculation for the Invoice.	
totalTaxBase	Value of the Total Tax in base currency.	
willCall	Select whether the products included in the Invoice should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.	
SLAId	Choose the service level agreement (SLA) that you want to apply to the Invoice record.	
SLAInvokedId	Last SLA that was applied to this Invoice. This field is for internal use only.	
onHoldTime	Shows the duration in minutes for which the Invoice was on hold.	
lastOnHoldTime	Contains the date time stamp of the last on hold time.	
entityImageId		
accountId	Unique identifier of the account with which the Invoice is associated.	
contactId	Unique identifier of the contact associated with the Invoice.	
billToContactName	Type the primary contact name at the customer's billing address.	projectServiceAutomation/Invoice
hasCorrections	Indicates if this Invoice contains corrections to previous Invoices.	projectServiceAutomation/Invoice
orderType	Whether the Invoice is for an Item- based Order or a Work-based Project Contract	projectServiceAutomation/Invoice
orderType_display		projectServiceAutomation/Invoice
projectInvoiceStatus	Project specific status	projectServiceAutomation/Invoice
projectInvoiceStatus_display		projectServiceAutomation/Invoice


*/