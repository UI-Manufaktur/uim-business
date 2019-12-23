module uim.business.products.product;

import uim.business;

@safe class DBUSProduct : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProduct() { return new DBUSProduct; }
auto BUSProduct(UUID newId, string newName) { return new DBUSProduct(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProducts {
  mixin(IEIEntitiesRest!("Product", "Products"));
}

@safe class DBUSProducts : IBUSProducts {
  mixin(OEntitiesInner!("Product", "Products"));
  mixin(OEntitiesRest!("Product", "Products"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	sales/ProductProduct
createdBy	Unique identifier of the user who created the record.	sales/ProductProduct
modifiedOn	Date and time when the record was modified.	sales/ProductProduct
modifiedBy	Unique identifier of the user who modified the record.	sales/ProductProduct
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	sales/ProductProduct
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	sales/ProductProduct
overriddenCreatedOn	Date and time that the record was migrated.	sales/ProductProduct
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	sales/ProductProduct
ownerIdType	The type of owner, either User or Team.	sales/ProductProduct
ownerId	Owner Id	sales/ProductProduct
owningBusinessUnit	Unique identifier for the business unit that owns the record	sales/ProductProduct
owningUser	Unique identifier of the user that owns the activity.	sales/ProductProduct
owningTeam	Unique identifier for the team that owns the record.	sales/ProductProduct
timeZoneRuleVersionNumber	For internal use only.	sales/ProductProduct
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	sales/ProductProduct
versionNumber	Version Number	sales/ProductProduct
productProductId	Unique identifier of the product product.	sales/ProductProduct
baseAmount	Shows the total price of the product product, based on the price per unit, volume discount, and quantity.	sales/ProductProduct
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	sales/ProductProduct
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	sales/ProductProduct
baseAmountBase	Value of the Amount in base currency.	sales/ProductProduct
description	Type additional information to describe the product product, such as manufacturing details.	sales/ProductProduct
extendedAmount	Shows the total amount due for the product product, calculated on the Amount value minus the Manual Discount amount.	sales/ProductProduct
extendedAmountBase	Value of the Extended Amount in base currency.	sales/ProductProduct
isPriceOverridden	Select whether the pricing on the product product reflects an override of the product catalog pricing.	sales/ProductProduct
isProductOverridden	For system use only.	sales/ProductProduct
lineItemNumber	Type the line item number for the product product to easily identify the product in the product documents and make sure it's listed in the correct order.	sales/ProductProduct
manualDiscountAmount	Type the manual discount amount for the product product to deduct any negotiated or other savings from the product total.	sales/ProductProduct
manualDiscountAmountBase	Value of the Manual Discount Amount in base currency.	sales/ProductProduct
productId	Unique identifier of the product with which the product product is associated.	sales/ProductProduct
productStateCode	Select the status of the product product.	sales/ProductProduct
productStateCode_display		sales/ProductProduct
parentBundleId	Choose the parent bundle associated with this product	sales/ProductProduct
productAssociationId	Unique identifier of the product line item association with bundle in the product	sales/ProductProduct
productTypeCode	Product Type	sales/ProductProduct
productTypeCode_display		sales/ProductProduct
pricePerUnit	Shows the price per unit of the product product, based on the price list specified on the parent product.	sales/ProductProduct
pricePerUnitBase	Value of the Price Per Unit in base currency.	sales/ProductProduct
pricingErrorCode	Select the pricing error for the product product.	sales/ProductProduct
pricingErrorCode_display		sales/ProductProduct
productDescription	Type a detailed product description or additional notes about the product product, such as talking points or product updates, that will assist the sales team when they discuss the product with the customer.	sales/ProductProduct
productName	Calculated field that will be populated by name and description of the product.	sales/ProductProduct
productId	Choose the product to include on the product to link the product's pricing and other information to the product.	sales/ProductProduct
quantity	Type the amount or quantity of the product the customer would like to purchase.	sales/ProductProduct
tax	Type the tax amount to be applied on the product product.	sales/ProductProduct
taxBase	Value of the Tax in base currency.	sales/ProductProduct
uoMId	Choose the unit of measurement for the base unit quantity for this purchase, such as each or dozen.	sales/ProductProduct
volumeDiscountAmount	Shows the discount amount per unit if a specified volume is purchased. Configure volume discounts in the Product Catalog in the Settings area.	sales/ProductProduct
volumeDiscountAmountBase	Value of the Volume Discount in base currency.	sales/ProductProduct
sequenceNumber	Shows the ID of the data that maintains the sequence.	sales/ProductProduct
propertyConfigurationStatus	Status of the property configuration.	sales/ProductProduct
propertyConfigurationStatus_display		sales/ProductProduct
entityImageId		sales/ProductProduct
productProductName	Product Product Name. Added for 1:n Referential relationship	sales/ProductProduct
parentBundleIdRef	Choose the parent bundle associated with this product	sales/ProductProduct
billingMethod	Billing method for the project product line. Valid values are Time and Material and Fixed Price	projectServiceAutomation/ProductProduct
billingMethod_display		projectServiceAutomation/ProductProduct
budgetAmount	Enter the customer budget amount for this product line.	projectServiceAutomation/ProductProduct
budgetAmountBase	Value of the Budget Amount in base currency.	projectServiceAutomation/ProductProduct
costAmount	Shows the total cost price of the product based on the cost price per unit and quantity.	projectServiceAutomation/ProductProduct
costAmountBase	Value of the Cost Amount in base currency.	projectServiceAutomation/ProductProduct
costPricePerUnit	Cost price per unit of the product. The default is the cost price of the product.	projectServiceAutomation/ProductProduct
costPricePerUnitBase	Value of the Cost Price Per Unit in base currency.	projectServiceAutomation/ProductProduct
lineType	The field to distinguish the order lines to be of project service or field service	projectServiceAutomation/ProductProduct
lineType_display		projectServiceAutomation/ProductProduct
project	Select the project for this product line.	projectServiceAutomation/ProductProduct


*/