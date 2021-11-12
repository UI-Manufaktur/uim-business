module uim.business.projects.parameterpricelist;

import uim.business;

@safe class DBUSProjectParameterPricelist : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProjectParameterPricelist() { return new DBUSProjectParameterPricelist; }
auto BUSProjectParameterPricelist(UUID newId, string newName) { return new DBUSProjectParameterPricelist(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProjectParameterPricelists {
  mixin(IEIEntitiesRest!("ProjectParameterPricelist", "ProjectParameterPricelists"));
}

@safe class DBUSProjectParameterPricelists : IBUSProjectParameterPricelists {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("ProjectParameterPricelist", "ProjectParameterPricelists"));
  mixin(OEntitiesRest!("ProjectParameterPricelist", "ProjectParameterPricelists"));
}

/*

Attributes
Name	Description	First Included in Instance
projectParameterPriceListId	Unique identifier for entity instances	projectServiceAutomation/ProjectParameterPriceList
createdOn	Date and time when the record was created.	projectServiceAutomation/ProjectParameterPriceList
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/ProjectParameterPriceList
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/ProjectParameterPriceList
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/ProjectParameterPriceList
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/ProjectParameterPriceList
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/ProjectParameterPriceList
organizationId	Unique identifier for the organization	projectServiceAutomation/ProjectParameterPriceList
stateCode	Status of the Project Parameter Price List	projectServiceAutomation/ProjectParameterPriceList
stateCode_display		projectServiceAutomation/ProjectParameterPriceList
statusCode	Reason for the status of the Project Parameter Price List	projectServiceAutomation/ProjectParameterPriceList
statusCode_display		projectServiceAutomation/ProjectParameterPriceList
versionNumber	Version Number	projectServiceAutomation/ProjectParameterPriceList
importSequenceNumber	Sequence number of the import that created this record.	projectServiceAutomation/ProjectParameterPriceList
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/ProjectParameterPriceList
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/ProjectParameterPriceList
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/ProjectParameterPriceList
description	Type the name of the custom entity.	projectServiceAutomation/ProjectParameterPriceList
priceList	Select the price list that is being associated to the project parameter record.	projectServiceAutomation/ProjectParameterPriceList
projectParameter	Select the project parameter record that this price list linked to.	projectServiceAutomation/ProjectParameterPriceList

*/