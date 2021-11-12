module uim.business.orders.product;

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	sales/OrderProduct
createdBy	Unique identifier of the user who created the record.	sales/OrderProduct
modifiedOn	Date and time when the record was modified.	sales/OrderProduct
modifiedBy	Unique identifier of the user who modified the record.	sales/OrderProduct
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	sales/OrderProduct
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	sales/OrderProduct
overriddenCreatedOn	Date and time that the record was migrated.	sales/OrderProduct
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	sales/OrderProduct
ownerIdType	The type of owner, either User or Team.	sales/OrderProduct
ownerId	Owner Id	sales/OrderProduct
owningBusinessUnit	Unique identifier for the business unit that owns the record	sales/OrderProduct
owningUser	Unique identifier of the user that owns the activity.	sales/OrderProduct
owningTeam	Unique identifier for the team that owns the record.	sales/OrderProduct
timeZoneRuleVersionNumber	For internal use only.	sales/OrderProduct
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	sales/OrderProduct
versionNumber	Version Number	sales/OrderProduct
salesOrderDetailId	Unique identifier of the product specified in the order.	sales/OrderProduct
baseAmount	Shows the total price of the order product, based on the price per unit, volume discount, and quantity.	sales/OrderProduct
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	sales/OrderProduct
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	sales/OrderProduct
baseAmountBase	Value of the Amount in base currency.	sales/OrderProduct
description	Type additional information to describe the order product, such as manufacturing details or acceptable substitutions.	sales/OrderProduct
extendedAmount	Shows the total amount due for the order product, based on the sum of the unit price, quantity, discounts, and tax.	sales/OrderProduct
extendedAmountBase	Value of the Extended Amount in base currency.	sales/OrderProduct
isCopied	Select whether the invoice line item is copied from another item or data source.	sales/OrderProduct
isPriceOverridden	Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the order product.	sales/OrderProduct
isProductOverridden	Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the order.	sales/OrderProduct
lineItemNumber	Type the line item number for the order product to easily identify the product in the order and make sure it's listed in the correct sequence.	sales/OrderProduct
manualDiscountAmount	Type the manual discount amount for the order product to deduct any negotiated or other savings from the product total on the order.	sales/OrderProduct
manualDiscountAmountBase	Value of the Manual Discount in base currency.	sales/OrderProduct
parentBundleId	Choose the parent bundle associated with this product	sales/OrderProduct
productAssociationId	Unique identifier of the product line item association with bundle in the sales order	sales/OrderProduct
productTypeCode	Product Type	sales/OrderProduct
productTypeCode_display		sales/OrderProduct
pricePerUnit	Type the price per unit of the order product. The default is the value in the price list specified on the order for existing products.	sales/OrderProduct
pricePerUnitBase	Value of the Price Per Unit in base currency.	sales/OrderProduct
pricingErrorCode	Select the type of pricing error, such as a missing or invalid product, or missing quantity.	sales/OrderProduct
pricingErrorCode_display		sales/OrderProduct
productDescription	Type a name or description to identify the type of write-in product included in the order.	sales/OrderProduct
productName	Calculated field that will be populated by name and description of the product.	sales/OrderProduct
productId	Choose the product to include on the order to link the product's pricing and other information to the parent order.	sales/OrderProduct
quantity	Type the amount or quantity of the product ordered by the customer.	sales/OrderProduct
quantityBackordered	Type the amount or quantity of the product that is back ordered for the order.	sales/OrderProduct
quantityCancelled	Type the amount or quantity of the product that was canceled.	sales/OrderProduct
quantityShipped	Type the amount or quantity of the product that was shipped for the order.	sales/OrderProduct
requestDeliveryBy	Enter the delivery date requested by the customer for the order product.	sales/OrderProduct
salesOrderId	Shows the order for the product. The ID is used to link product pricing and other details to the total amounts and other information on the order.	sales/OrderProduct
salesOrderIsPriceLocked	Tells whether product pricing is locked for the order.	sales/OrderProduct
salesOrderStateCode	Shows the status of the order that the order detail is associated with.	sales/OrderProduct
salesOrderStateCode_display		sales/OrderProduct
salesRepId	Choose the user responsible for the sale of the order product.	sales/OrderProduct
shipToAddressId	Unique identifier of the shipping address.	sales/OrderProduct
shipToCity	Type the city for the customer's shipping address.	sales/OrderProduct
shipToContactName	Type the primary contact name at the customer's shipping address.	sales/OrderProduct
shipToCountry	Type the country or region for the customer's shipping address.	sales/OrderProduct
shipToFax	Type the fax number for the customer's shipping address.	sales/OrderProduct
shipToFreightTermsCode	Select the freight terms to make sure shipping orders are processed correctly.	sales/OrderProduct
shipToFreightTermsCode_display		sales/OrderProduct
shipToLine1	Type the first line of the customer's shipping address.	sales/OrderProduct
shipToLine2	Type the second line of the customer's shipping address.	sales/OrderProduct
shipToLine3	Type the third line of the shipping address.	sales/OrderProduct
shipToName	Type a name for the customer's shipping address, such as "Headquarters" or "Field office", to identify the address.	sales/OrderProduct
shipToPostalCode	Type the ZIP Code or postal code for the shipping address.	sales/OrderProduct
shipToStateOrProvince	Type the state or province for the shipping address.	sales/OrderProduct
shipToTelephone	Type the phone number for the customer's shipping address.	sales/OrderProduct
tax	Type the tax amount for the order product.	sales/OrderProduct
taxBase	Value of the Tax in base currency.	sales/OrderProduct
uoMId	Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen.	sales/OrderProduct
volumeDiscountAmount	Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area.	sales/OrderProduct
volumeDiscountAmountBase	Value of the Volume Discount in base currency.	sales/OrderProduct
willCall	Select whether the order product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.	sales/OrderProduct
sequenceNumber	Shows the ID of the data that maintains the sequence.	sales/OrderProduct
propertyConfigurationStatus	Status of the property configuration.	sales/OrderProduct
propertyConfigurationStatus_display		sales/OrderProduct
quoteDetailId	Unique identifier for Quote Line associated with Order Line.	sales/OrderProduct
salesOrderDetailName	Sales Order Detail Name. Added for 1:n Referential relationship	sales/OrderProduct
parentBundleIdRef	Choose the parent bundle associated with this product	sales/OrderProduct
billingMethod	Billing method for the project contract line. Valid values are Time and Material and Fixed Price	projectServiceAutomation/OrderProduct
billingMethod_display		projectServiceAutomation/OrderProduct
billingStartDate	Select the billing start date for the project contract line.	projectServiceAutomation/OrderProduct
billingStatus	Select the billing status for the project contract line.	projectServiceAutomation/OrderProduct
billingStatus_display		projectServiceAutomation/OrderProduct
budgetAmount	Enter the amount the customer has set aside or is willing to pay for the project contract component.	projectServiceAutomation/OrderProduct
budgetAmountBase	Value of the Budget Amount in base currency.	projectServiceAutomation/OrderProduct
costAmount	Shows the total cost price of the product based on the cost price per unit and quantity.	projectServiceAutomation/OrderProduct
costAmountBase	Value of the Cost Amount in base currency.	projectServiceAutomation/OrderProduct
costPricePerUnit	Cost per unit of the product. The default is the cost price of the product.	projectServiceAutomation/OrderProduct
costPricePerUnitBase	Value of the Cost Price Per Unit in base currency.	projectServiceAutomation/OrderProduct
includeExpense	Select whether to include expenses in the project contract line.	projectServiceAutomation/OrderProduct
includeFee	Select whether to include fees in the project contract line.	projectServiceAutomation/OrderProduct
includeMaterial	Select whether to include materials in the project contract line.	projectServiceAutomation/OrderProduct
includeTime	Select whether to include time transactions in the project contract line.	projectServiceAutomation/OrderProduct
invoiceFrequency	Select the frequency for the automatic invoice creation job to create the invoice.	projectServiceAutomation/OrderProduct
lineType	The field to distinguish the order lines to be of project service or field service	projectServiceAutomation/OrderProduct
lineType_display		projectServiceAutomation/OrderProduct
project	Select the project of the project contract line.	projectServiceAutomation/OrderProduct
quoteLine	(Deprecated) Shows the quote line related to the project contract line.	projectServiceAutomation/OrderProduct


*/