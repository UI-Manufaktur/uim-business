module uim.business.common.address;

import uim.business;

@safe class DBUSAddress : DBUSObject {
  mixin(EntityThis!());
}
auto BUSAddress() { return new DBUSAddress; }
auto BUSAddress(UUID newId, string newName) { return new DBUSAddress(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSAddresses {
  mixin(IEIEntitiesRest!("Address", "Addresses"));
}

@safe class DBUSAddresses : IBUSAddresses {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Address", "Addresses"));
  mixin(OEntitiesRest!("Address", "Addresses"));}
/*
Attributes
Name	Description	First Included in Instance
parentIdTypeCode		applicationCommon/Address
parentId		applicationCommon/Address
customerAddressId		applicationCommon/Address
AddressNumber		applicationCommon/Address
objectTypeCode		applicationCommon/Address
objectTypeCode_display		applicationCommon/Address
AddressTypeCode		applicationCommon/Address
AddressTypeCode_display		applicationCommon/Address
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