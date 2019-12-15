module uim.business.common.currency;

import uim.business;

@safe class DBUSCurrency : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSCurrency() { return new DBUSCurrency; }
auto BUSCurrency(UUID newId, string newName) { return new DBUSCurrency(newId, newName); }
unittest {
  // writeln();
}

@path("/api/demo/")
interface IBUSCurrencies {
  mixin(IEntitiesFragment!("currency", "currencies"));
}

@safe class DBUSCurrencies : IBUSCurrencies {
  this() {
    _entities ~= new DBUSCurrency(randomUUID, "hallo");
    _entities ~= new DBUSCurrency(randomUUID, "world");
  }

  DBUSCurrency[] _entities;

  DBUSCurrency[] all() { 
    DBUSCurrency[] results;  
    foreach(entity; _entities) results ~= entity;
    return results;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSCurrency get(string _id) { 
    DBUSCurrency result;

    result = _entities[0];

    return result;
  }

  DBUSCurrency[] versions(string _id) { 
    DBUSCurrency[] results;
  
    foreach(entity; _entities) results ~= entity;

    return results;
  }

  bool exists(string _id) {
    return true;
  }

	DBUSCurrency create(DBUSCurrency entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSCurrency update(DBUSCurrency entity) {
   return entity; 
  }
}
/*
Attributes
Name	Description	First Included in Instance
statusCode	Reason for the status of the transaction currency.	applicationCommon/Currency
statusCode_display		applicationCommon/Currency
modifiedOn	Date and time when the transaction currency was last modified.	applicationCommon/Currency
stateCode	Status of the transaction currency.	applicationCommon/Currency
stateCode_display		applicationCommon/Currency
versionNumber	Version number of the transaction currency.	applicationCommon/Currency
modifiedBy	Unique identifier of the user who last modified the transaction currency.	applicationCommon/Currency
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	applicationCommon/Currency
overriddenCreatedOn	Date and time that the record was migrated.	applicationCommon/Currency
createdOn	Date and time when the transaction currency was created.	applicationCommon/Currency
transactionCurrencyId	Unique identifier of the transaction currency.	applicationCommon/Currency
exchangeRate	Exchange rate between the transaction currency and the base currency.	applicationCommon/Currency
currencySymbol	Symbol for the transaction currency.	applicationCommon/Currency
currencyName	Name of the transaction currency.	applicationCommon/Currency
createdBy	Unique identifier of the user who created the transaction currency.	applicationCommon/Currency
ISOCurrencyCode	ISO currency code for the transaction currency.	applicationCommon/Currency
organizationId	Unique identifier of the organization associated with the transaction currency.	applicationCommon/Currency
currencyPrecision	Number of decimal places that can be used for currency.	applicationCommon/Currency
createdOnBehalfBy	Unique identifier of the delegate user who created the transactioncurrency.	applicationCommon/Currency
modifiedOnBehalfBy	Unique identifier of the delegate user who last modified the transactioncurrency.	applicationCommon/Currency
entityImageId	For internal use only.	applicationCommon/Currency
statusCode

*/