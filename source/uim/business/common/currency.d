module uim.business.common.currency;

import uim.business;

@safe class DBUSCurrency : DBUSObject {
  mixin(EntityThis!());
}
auto BUSCurrency() { return new DBUSCurrency; }
auto BUSCurrency(UUID newId, string newName) { return new DBUSCurrency(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSCurrencies {
  mixin(IEIEntitiesRest!("Currency", "Currencies"));
}

@safe class DBUSCurrencies : IBUSCurrencies {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Currency", "Currencies"));
  mixin(OEntitiesRest!("Currency", "Currencies"));
}
/*
Attributes
Name	Description	First Included in Instance
statusCode	Reason for the status of the transaction Currency.	applicationCommon/Currency
statusCode_display		applicationCommon/Currency
modifiedOn	Date and time when the transaction Currency was last modified.	applicationCommon/Currency
stateCode	Status of the transaction Currency.	applicationCommon/Currency
stateCode_display		applicationCommon/Currency
versionNumber	Version number of the transaction Currency.	applicationCommon/Currency
modifiedBy	Unique identifier of the user who last modified the transaction Currency.	applicationCommon/Currency
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	applicationCommon/Currency
overriddenCreatedOn	Date and time that the record was migrated.	applicationCommon/Currency
createdOn	Date and time when the transaction Currency was created.	applicationCommon/Currency
transactionCurrencyId	Unique identifier of the transaction Currency.	applicationCommon/Currency
exchangeRate	Exchange rate between the transaction Currency and the base Currency.	applicationCommon/Currency
CurrencySymbol	Symbol for the transaction Currency.	applicationCommon/Currency
CurrencyName	Name of the transaction Currency.	applicationCommon/Currency
createdBy	Unique identifier of the user who created the transaction Currency.	applicationCommon/Currency
ISOCurrencyCode	ISO Currency code for the transaction Currency.	applicationCommon/Currency
organizationId	Unique identifier of the organization associated with the transaction Currency.	applicationCommon/Currency
CurrencyPrecision	Number of decimal places that can be used for Currency.	applicationCommon/Currency
createdOnBehalfBy	Unique identifier of the delegate user who created the transactionCurrency.	applicationCommon/Currency
modifiedOnBehalfBy	Unique identifier of the delegate user who last modified the transactionCurrency.	applicationCommon/Currency
entityImageId	For internal use only.	applicationCommon/Currency
statusCode

*/