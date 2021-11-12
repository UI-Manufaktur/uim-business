module uim.business.projectpricelists.pricelist;

import uim.business;

@safe class DBUSProjectPricelist : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProjectPricelist() { return new DBUSProjectPricelist; }
auto BUSProjectPricelist(UUID newId, string newName) { return new DBUSProjectPricelist(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProjectPricelists {
  mixin(IEIEntitiesRest!("ProjectPricelist", "ProjectPricelists"));
}

@safe class DBUSProjectPricelists : IBUSProjectPricelists {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("ProjectPricelist", "ProjectPricelists"));
  mixin(OEntitiesRest!("ProjectPricelist", "ProjectPricelists"));
}


/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectpricelistServiceAutomation/ProjectPricelistPriceList
createdBy	Unique identifier of the user who created the record.	projectpricelistServiceAutomation/ProjectPricelistPriceList
modifiedOn	Date and time when the record was modified.	projectpricelistServiceAutomation/ProjectPricelistPriceList
modifiedBy	Unique identifier of the user who modified the record.	projectpricelistServiceAutomation/ProjectPricelistPriceList
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectpricelistServiceAutomation/ProjectPricelistPriceList
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectpricelistServiceAutomation/ProjectPricelistPriceList
overriddenCreatedOn	Date and time that the record was migrated.	projectpricelistServiceAutomation/ProjectPricelistPriceList
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectpricelistServiceAutomation/ProjectPricelistPriceList
ownerIdType	The type of owner, either User or Team.	projectpricelistServiceAutomation/ProjectPricelistPriceList
ownerId	Owner Id	projectpricelistServiceAutomation/ProjectPricelistPriceList
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectpricelistServiceAutomation/ProjectPricelistPriceList
owningUser	Unique identifier of the user that owns the activity.	projectpricelistServiceAutomation/ProjectPricelistPriceList
owningTeam	Unique identifier for the team that owns the record.	projectpricelistServiceAutomation/ProjectPricelistPriceList
timeZoneRuleVersionNumber	For internal use only.	projectpricelistServiceAutomation/ProjectPricelistPriceList
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectpricelistServiceAutomation/ProjectPricelistPriceList
versionNumber	Version Number	projectpricelistServiceAutomation/ProjectPricelistPriceList
projectpricelistPriceListId	Unique identifier for entity instances	projectpricelistServiceAutomation/ProjectPricelistPriceList
stateCode	Status of the ProjectPricelist Price List	projectpricelistServiceAutomation/ProjectPricelistPriceList
stateCode_display		projectpricelistServiceAutomation/ProjectPricelistPriceList
statusCode	Reason for the status of the ProjectPricelist Price List	projectpricelistServiceAutomation/ProjectPricelistPriceList
statusCode_display		projectpricelistServiceAutomation/ProjectPricelistPriceList
description	The name of the custom entity.	projectpricelistServiceAutomation/ProjectPricelistPriceList
priceList	Shows the name of the projectpricelist price list.	projectpricelistServiceAutomation/ProjectPricelistPriceList
projectpricelist	Shows the projectpricelist for the projectpricelist price list.	projectpricelistServiceAutomation/ProjectPricelistPriceList


*/