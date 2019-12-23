module uim.business.projectteams.team;

import uim.business;

@safe class DBUSProjectTeam : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProjectTeam() { return new DBUSProjectTeam; }
auto BUSProjectTeam(UUID newId, string newName) { return new DBUSProjectTeam(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProjectTeams {
  mixin(IEIEntitiesRest!("ProjectTeam", "ProjectTeams"));
}

@safe class DBUSProjectTeams : IBUSProjectTeams {
  mixin(OEntitiesInner!("ProjectTeam", "ProjectTeams"));
  mixin(OEntitiesRest!("ProjectTeam", "ProjectTeams"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectteamServiceAutomation/ProjectTeamTeam
createdBy	Unique identifier of the user who created the record.	projectteamServiceAutomation/ProjectTeamTeam
modifiedOn	Date and time when the record was modified.	projectteamServiceAutomation/ProjectTeamTeam
modifiedBy	Unique identifier of the user who modified the record.	projectteamServiceAutomation/ProjectTeamTeam
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectteamServiceAutomation/ProjectTeamTeam
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectteamServiceAutomation/ProjectTeamTeam
overriddenCreatedOn	Date and time that the record was migrated.	projectteamServiceAutomation/ProjectTeamTeam
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectteamServiceAutomation/ProjectTeamTeam
ownerIdType	The type of owner, either User or Team.	projectteamServiceAutomation/ProjectTeamTeam
ownerId	Owner Id	projectteamServiceAutomation/ProjectTeamTeam
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectteamServiceAutomation/ProjectTeamTeam
owningUser	Unique identifier of the user that owns the activity.	projectteamServiceAutomation/ProjectTeamTeam
owningTeam	Unique identifier for the team that owns the record.	projectteamServiceAutomation/ProjectTeamTeam
timeZoneRuleVersionNumber	For internal use only.	projectteamServiceAutomation/ProjectTeamTeam
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectteamServiceAutomation/ProjectTeamTeam
versionNumber	Version Number	projectteamServiceAutomation/ProjectTeamTeam
projectteamTeamId	Unique identifier for entity instances	projectteamServiceAutomation/ProjectTeamTeam
stateCode	Shows the status of the projectteam team.	projectteamServiceAutomation/ProjectTeamTeam
stateCode_display		projectteamServiceAutomation/ProjectTeamTeam
statusCode	Reason for the status of the ProjectTeam Team	projectteamServiceAutomation/ProjectTeamTeam
statusCode_display		projectteamServiceAutomation/ProjectTeamTeam
positionName	Type the name of the custom entity.	projectteamServiceAutomation/ProjectTeamTeam
allocationMethod	Shows the allocation method used to book resources on the projectteam (full capacity, percentage, and so on).	projectteamServiceAutomation/ProjectTeamTeam
allocationMethod_display		projectteamServiceAutomation/ProjectTeamTeam
assignedHours	Type the total assigned hours for projectteam team member.	projectteamServiceAutomation/ProjectTeamTeam
billingType	Select whether the team member is billable	projectteamServiceAutomation/ProjectTeamTeam
billingType_display		projectteamServiceAutomation/ProjectTeamTeam
bookableResourceId	Shows the resource.	projectteamServiceAutomation/ProjectTeamTeam
calendarId	Shows the calendar used for staffing this projectteam team.	projectteamServiceAutomation/ProjectTeamTeam
description	Type the system description.	projectteamServiceAutomation/ProjectTeamTeam
from	Enter the resource team membership start date.	projectteamServiceAutomation/ProjectTeamTeam
hardBookedHours	Hard Booked Hours	projectteamServiceAutomation/ProjectTeamTeam
hours	Duplicate for resource requirement	projectteamServiceAutomation/ProjectTeamTeam
hoursRequested	Shows the number of hours required of this team member on the projectteam.	projectteamServiceAutomation/ProjectTeamTeam
membershipStatus	Shows the membership status of this projectteam team member.	projectteamServiceAutomation/ProjectTeamTeam
membershipStatus_display		projectteamServiceAutomation/ProjectTeamTeam
MSProjectTeamClientId	The id of the projectteam team member in MS ProjectTeam Client.	projectteamServiceAutomation/ProjectTeamTeam
number	Shows the number of resources requested.	projectteamServiceAutomation/ProjectTeamTeam
resourcingUnit	The organizational unit of the resource performing the work.	projectteamServiceAutomation/ProjectTeamTeam
percentage	Duplicate for resource requirement	projectteamServiceAutomation/ProjectTeamTeam
projectteam	Select the projectteam that this team members are part of.	projectteamServiceAutomation/ProjectTeamTeam
projectteamApprover	Select whether the team member can approve time and expenses.	projectteamServiceAutomation/ProjectTeamTeam
requiredHours	Required hours of team member from team member requirement	projectteamServiceAutomation/ProjectTeamTeam
resourceCategory	Select the role this team member is playing in this team.	projectteamServiceAutomation/ProjectTeamTeam
resourceRequirementId	Unique identifier for Resource Requirement associated with ProjectTeam Team Member.	projectteamServiceAutomation/ProjectTeamTeam
roleDescription	Enter a description of the role for this team member.	projectteamServiceAutomation/ProjectTeamTeam
softBookedHours	Soft Booked Hours	projectteamServiceAutomation/ProjectTeamTeam
to	Enter the end date of the resource membership in a team.	projectteamServiceAutomation/ProjectTeamTeam
workTemplate	Template to use for generic resource's schedule. Will be ignored if its a user or facility resource	projectteamServiceAutomation/ProjectTeamTeam
applicantCount	Shows the number of applicants for this projectteam team.	projectteamServiceAutomation/ProjectTeamTeam
applicantCountDate	Last Updated time of rollup field Applicant count.	projectteamServiceAutomation/ProjectTeamTeam
applicantCountState	State of rollup field Applicant count.	projectteamServiceAutomation/ProjectTeamTeam
applicantsAvailable	Shows if there are applicants available for this projectteam team.	projectteamServiceAutomation/ProjectTeamTeam


*/