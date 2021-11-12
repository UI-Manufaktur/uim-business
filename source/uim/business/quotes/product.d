module uim.business.quotes.product;

import uim.business;

@safe class DBUSQuoteProduct : DBUSObject {
    mixin(EntityThis!());
}
auto BUSQuoteProduct() { return new DBUSQuoteProduct; }
auto BUSQuoteProduct(UUID newId, string newName) { return new DBUSQuoteProduct(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuoteProducts {
  mixin(IEIEntitiesRest!("QuoteProduct", "QuoteProducts"));
}

@safe class DBUSQuoteProducts : IBUSQuoteProducts {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("QuoteProduct", "QuoteProducts"));
  mixin(OEntitiesRest!("QuoteProduct", "QuoteProducts"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	sales/QuoteProduct
createdBy	Unique identifier of the user who created the record.	sales/QuoteProduct
modifiedOn	Date and time when the record was modified.	sales/QuoteProduct
modifiedBy	Unique identifier of the user who modified the record.	sales/QuoteProduct
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	sales/QuoteProduct
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	sales/QuoteProduct
overriddenCreatedOn	Date and time that the record was migrated.	sales/QuoteProduct
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	sales/QuoteProduct
ownerIdType	The type of owner, either User or Team.	sales/QuoteProduct
ownerId	Owner Id	sales/QuoteProduct
owningBusinessUnit	Unique identifier for the business unit that owns the record	sales/QuoteProduct
owningUser	Unique identifier of the user that owns the activity.	sales/QuoteProduct
owningTeam	Unique identifier for the team that owns the record.	sales/QuoteProduct
timeZoneRuleVersionNumber	For internal use only.	sales/QuoteProduct
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	sales/QuoteProduct
versionNumber	Version Number	sales/QuoteProduct
quoteDetailId	Unique identifier of the product line item in the quote.	sales/QuoteProduct
baseAmount	Shows the total price of the quote product, based on the price per unit, volume discount, and quantity.	sales/QuoteProduct
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	sales/QuoteProduct
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	sales/QuoteProduct
baseAmountBase	Value of the Amount in base currency.	sales/QuoteProduct
description	Type additional information to describe the quote product, such as manufacturing details or acceptable substitutions.	sales/QuoteProduct
extendedAmount	Shows the total amount due for the quote product, based on the sum of the unit price, quantity, discounts ,and tax.	sales/QuoteProduct
extendedAmountBase	Value of the Extended Amount in base currency.	sales/QuoteProduct
isPriceOverridden	Select whether the price per unit is fixed at the value in the specified price list or can be overridden by users who have edit rights to the quote product.	sales/QuoteProduct
isProductOverridden	Select whether the product exists in the Microsoft Dynamics 365 product catalog or is a write-in product specific to the quote.	sales/QuoteProduct
lineItemNumber	Type the line item number for the quote product to easily identify the product in the quote and make sure it's listed in the correct order.	sales/QuoteProduct
manualDiscountAmount	Type the manual discount amount for the quote product to deduct any negotiated or other savings from the product total on the quote.	sales/QuoteProduct
manualDiscountAmountBase	Value of the Manual Discount in base currency.	sales/QuoteProduct
parentBundleId	Choose the parent bundle associated with this product	sales/QuoteProduct
productAssociationId	Unique identifier of the product line item association with bundle in the quote	sales/QuoteProduct
productTypeCode	Product Type	sales/QuoteProduct
productTypeCode_display		sales/QuoteProduct
pricePerUnit	Type the price per unit of the quote product. The default is to the value in the price list specified on the quote for existing products.	sales/QuoteProduct
pricePerUnitBase	Value of the Price Per Unit in base currency.	sales/QuoteProduct
pricingErrorCode	Select the type of pricing error, such as a missing or invalid product, or missing quantity.	sales/QuoteProduct
pricingErrorCode_display		sales/QuoteProduct
productDescription	Type a name or description to identify the type of write-in product included in the quote.	sales/QuoteProduct
productName	Calculated field that will be populated by name and description of the product.	sales/QuoteProduct
productId	Choose the product to include on the quote to link the product's pricing and other information to the quote.	sales/QuoteProduct
quantity	Type the amount or quantity of the product requested by the customer.	sales/QuoteProduct
quoteId	Unique identifier of the quote for the quote product.	sales/QuoteProduct
quoteStateCode	Status of the quote product.	sales/QuoteProduct
quoteStateCode_display		sales/QuoteProduct
requestDeliveryBy	Enter the delivery date requested by the customer for the quote product.	sales/QuoteProduct
salesRepId	Choose the user responsible for the sale of the quote product.	sales/QuoteProduct
shipToAddressId	Unique identifier of the shipping address.	sales/QuoteProduct
shipToCity	Type the city for the customer's shipping address.	sales/QuoteProduct
shipToContactName	Type the primary contact name at the customer's shipping address.	sales/QuoteProduct
shipToCountry	Type the country or region for the customer's shipping address.	sales/QuoteProduct
shipToFax	Type the fax number for the customer's shipping address.	sales/QuoteProduct
shipToFreightTermsCode	Select the freight terms to make sure shipping orders are processed correctly.	sales/QuoteProduct
shipToFreightTermsCode_display		sales/QuoteProduct
shipToLine1	Type the first line of the customer's shipping address.	sales/QuoteProduct
shipToLine2	Type the second line of the customer's shipping address.	sales/QuoteProduct
shipToLine3	Type the third line of the shipping address.	sales/QuoteProduct
shipToName	Type a name for the customer's shipping address, such as "Headquarters" or "Field office", to identify the address.	sales/QuoteProduct
shipToPostalCode	Type the ZIP Code or postal code for the shipping address.	sales/QuoteProduct
shipToStateOrProvince	Type the state or province for the shipping address.	sales/QuoteProduct
shipToTelephone	Type the phone number for the customer's shipping address.	sales/QuoteProduct
tax	Type the tax amount for the quote product.	sales/QuoteProduct
taxBase	Value of the Tax in base currency.	sales/QuoteProduct
uoMId	Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen.	sales/QuoteProduct
volumeDiscountAmount	Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area.	sales/QuoteProduct
volumeDiscountAmountBase	Value of the Volume Discount in base currency.	sales/QuoteProduct
willCall	Select whether the quote product should be shipped to the specified address or held until the customer calls with further pick up or delivery instructions.	sales/QuoteProduct
sequenceNumber	Unique identifier of the data that maintains the sequence.	sales/QuoteProduct
propertyConfigurationStatus	Status of the property configuration.	sales/QuoteProduct
propertyConfigurationStatus_display		sales/QuoteProduct
quoteDetailName	Quote Detail Name. Added for 1:n Referential relationship	sales/QuoteProduct
parentBundleIdRef	Choose the parent bundle associated with this product	sales/QuoteProduct
billingMethod	Billing method for the project quote line. Valid values are Time and Material and Fixed Price	projectServiceAutomation/QuoteProduct
billingMethod_display		projectServiceAutomation/QuoteProduct
billingStartDate	Enter the estimated start date for the billing frequency on the project.	projectServiceAutomation/QuoteProduct
budgetAmount	Enter the amount the customer has set aside or is willing to pay for the quote component.	projectServiceAutomation/QuoteProduct
budgetAmountBase	Value of the Budget Amount in base currency.	projectServiceAutomation/QuoteProduct
costAmount	Shows the total cost price of the product based on the cost price per unit and quantity.	projectServiceAutomation/QuoteProduct
costAmountBase	Value of the CostAmount in base currency.	projectServiceAutomation/QuoteProduct
costPricePerUnit	Cost per unit of the product. The default is the cost price of the product.	projectServiceAutomation/QuoteProduct
costPricePerUnitBase	Value of the Cost Price Per Unit in base currency.	projectServiceAutomation/QuoteProduct
includeExpense	Select whether to include expenses in the quote line.	projectServiceAutomation/QuoteProduct
includeFee	Select whether to include fees in the quote line.	projectServiceAutomation/QuoteProduct
includeMaterial	Select whether to include materials in the quote line.	projectServiceAutomation/QuoteProduct
includeTime	Select whether to include time transactions in the quote line.	projectServiceAutomation/QuoteProduct
invoiceFrequency	Select the frequency for the automatic invoice creation job to create the invoice.	projectServiceAutomation/QuoteProduct
lineType	The field to distinguish the quote lines to be of project service or field service	projectServiceAutomation/QuoteProduct
lineType_display		projectServiceAutomation/QuoteProduct
opportunityLine	Shows the opportunity line related to this quote line.	projectServiceAutomation/QuoteProduct
project	Select the project related to this quote line.	projectServiceAutomation/QuoteProduct
quoteLineDescription	abstracts description for product based lines vs write-in products or project based lines	projectServiceAutomation/QuoteProduct


*/