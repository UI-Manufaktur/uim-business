module uim.business.services.service;

import uim.business;

@safe class DBUSService : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSService() { return new DBUSService; }
auto BUSService(UUID newId, string newName) { return new DBUSService(newId, newName); }
unittest {
  // writeln();
}


@path(restPath)
interface IBUSServices {
  mixin(IEIEntitiesRest!("Service", "Services"));
}

@safe class DBUSServices : IBUSServices {
  mixin(OEntitiesInner!("Service", "Services"));
  mixin(OEntitiesRest!("Service", "Services"));
}

/*

Attributes
Name	Description	First Included in Instance
serviceId	Unique identifier of the associated service.	service/Service
createdOn	Date and time when the service was created.	service/Service
createdBy	Unique identifier of the user who created the service.	service/Service
modifiedOn	Date and time when the service was last modified.	service/Service
modifiedBy	Unique identifier of the user who last modified the service.	service/Service
createdOnBehalfBy	Unique identifier of the delegate user who created the service.	service/Service
modifiedOnBehalfBy	Unique identifier of the delegate user who last modified the service.	service/Service
organizationId	Unique identifier for the organization	service/Service
versionNumber	Version Number	service/Service
importSequenceNumber	Sequence number of the import that created this record.	service/Service
overriddenCreatedOn	Date and time that the record was migrated.	service/Service
timeZoneRuleVersionNumber	For internal use only.	service/Service
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	service/Service
name	Name of the service.	service/Service
anchorOffset	Used in conjunction with granularity to describes when services can be performed in relation to midnight on a given day.	service/Service
calendarId	Unique identifier of the calendar.	service/Service
description	Description of activity that represents work done to satisfy a customer's need.	service/Service
duration	Duration of the service.	service/Service
granularity	Describes how often the service is performed.	service/Service
initialStatusCode	Initial status reason for the service activity.	service/Service
initialStatusCode_display		service/Service
isSchedulable	Information about whether the service can be scheduled.	service/Service
isVisible	Information about whether the service is visible to users.	service/Service
resourceSpecId	Unique identifier of the resource specification with which the service is associated.	service/Service
showResources	For internal use only.	service/Service
strategyId	Value that is taken from PluginTypeId in the Plugin Type record for the scheduling strategy. This is the ID of the scheduling strategy plug-in associated with the service.	service/Service

*/