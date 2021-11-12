module uim.business.quotes.pricelist;

import uim.business;

@safe class DBUSQuotePricelist : DBUSObject {
    mixin(EntityThis!());
}
auto BUSQuotePricelist() { return new DBUSQuotePricelist; }
auto BUSQuotePricelist(UUID newId, string newName) { return new DBUSQuotePricelist(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSQuotePricelists {
  mixin(IEIEntitiesRest!("QuotePricelist", "QuotePricelists"));
}

@safe class DBUSQuotePricelists : IBUSQuotePricelists {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("QuotePricelist", "QuotePricelists"));
  mixin(OEntitiesRest!("QuotePricelist", "QuotePricelists"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/QuotePricelist
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/QuotePricelist
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/QuotePricelist
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/QuotePricelist
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/QuotePricelist
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/QuotePricelist
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/QuotePricelist
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/QuotePricelist
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/QuotePricelist
ownerId	Owner Id	projectServiceAutomation/QuotePricelist
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/QuotePricelist
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/QuotePricelist
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/QuotePricelist
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/QuotePricelist
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/QuotePricelist
versionNumber	Version Number	projectServiceAutomation/QuotePricelist
QuotePricelistId	Shows the entity instances.	projectServiceAutomation/QuotePricelist
stateCode	Status of the Quote Price List	projectServiceAutomation/QuotePricelist
stateCode_display		projectServiceAutomation/QuotePricelist
statusCode	Reason for the status of the Quote Price List	projectServiceAutomation/QuotePricelist
statusCode_display		projectServiceAutomation/QuotePricelist
description	Type the name of the custom entity.	projectServiceAutomation/QuotePricelist
priceList	Select the price list that will be used for defaulting sales price on quote.	projectServiceAutomation/QuotePricelist
quote	Select the reference to the quote that the price list is linked to.	projectServiceAutomation/QuotePricelist


*/

