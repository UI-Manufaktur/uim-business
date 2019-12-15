module uim.business.common.address;

import uim.business;

@safe class DBUSAddress : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSAddress() { return new DBUSAddress; }
auto BUSAddress(UUID newId, string newName) { return new DBUSAddress(newId, newName); }
unittest {
  // writeln();
}

@path("/api/demo/")
interface IBUSAddresses {
  mixin(IEntitiesFragment!("address", "addresses"));
}

@safe class DBUSAddresses : IBUSAddresses {
  this() {
    _entities ~= new DBUSAddress(randomUUID, "hallo");
    _entities ~= new DBUSAddress(randomUUID, "world");
  }

  DBUSAddress[] _entities;

  DBUSAddress[] all() { 
    DBUSAddress[] results;  
    foreach(entity; _entities) results ~= entity;
    return results;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSAddress get(string _id) { 
    DBUSAddress result;

    result = _entities[0];

    return result;
  }

  DBUSAddress[] versions(string _id) { 
    DBUSAddress[] results;
  
    foreach(entity; _entities) results ~= entity;

    return results;
  }

  bool exists(string _id) {
    return true;
  }

	DBUSAddress create(DBUSAddress entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSAddress update(DBUSAddress entity) {
   return entity; 
  }
}
/*
Attributes
Name	Description	First Included in Instance
parentIdTypeCode		applicationCommon/Address
parentId		applicationCommon/Address
customerAddressId		applicationCommon/Address
addressNumber		applicationCommon/Address
objectTypeCode		applicationCommon/Address
objectTypeCode_display		applicationCommon/Address
addressTypeCode		applicationCommon/Address
addressTypeCode_display		applicationCommon/Address
name		applicationCommon/Address
primaryContactName		applicationCommon/Address
line1		applicationCommon/Address
line2		applicationCommon/Address
line3		applicationCommon/Address
city		applicationCommon/Address
stateOrProvince		applicationCommon/Address
county		applicationCommon/Address
country		applicationCommon/Address
postOfficeBox		applicationCommon/Address
postalCode		applicationCommon/Address
UTCOffset		applicationCommon/Address
freightTermsCode		applicationCommon/Address
freightTermsCode_display		applicationCommon/Address
UPSZone		applicationCommon/Address
latitude		applicationCommon/Address
telephone1		applicationCommon/Address
longitude		applicationCommon/Address
shippingMethodCode		applicationCommon/Address
shippingMethodCode_display		applicationCommon/Address
telephone2		applicationCommon/Address
telephone3		applicationCommon/Address
fax		applicationCommon/Address
versionNumber		applicationCommon/Address
createdBy		applicationCommon/Address
createdOn		applicationCommon/Address
modifiedBy		applicationCommon/Address
modifiedOn		applicationCommon/Address
owningBusinessUnit		applicationCommon/Address
owningUser		applicationCommon/Address
timeZoneRuleVersionNumber		applicationCommon/Address
overriddenCreatedOn		applicationCommon/Address
UTCConversionTimeZoneCode		applicationCommon/Address
importSequenceNumber		applicationCommon/Address
ownerIdType		applicationCommon/Address
ownerId		applicationCommon/Address
createdOnBehalfBy		applicationCommon/Address
modifiedOnBehalfBy		applicationCommon/Address
transactionCurrencyId		applicationCommon/Address
exchangeRate		applicationCommon/Address
composite		applicationCommon/Address

*/