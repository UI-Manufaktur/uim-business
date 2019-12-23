module uim.business.projects.project;

import uim.business;

@safe class DBUSProject : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProject() { return new DBUSProject; }
auto BUSProject(UUID newId, string newName) { return new DBUSProject(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProjects {
  mixin(IEIEntitiesRest!("Project", "Projects"));
}

@safe class DBUSProjects : IBUSProjects {
  mixin(OEntitiesInner!("Project", "Projects"));
  mixin(OEntitiesRest!("Project", "Projects"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectProjectAutomation/Project
createdBy	Unique identifier of the user who created the record.	projectProjectAutomation/Project
modifiedOn	Date and time when the record was modified.	projectProjectAutomation/Project
modifiedBy	Unique identifier of the user who modified the record.	projectProjectAutomation/Project
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectProjectAutomation/Project
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectProjectAutomation/Project
overriddenCreatedOn	Date and time that the record was migrated.	projectProjectAutomation/Project
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectProjectAutomation/Project
ownerIdType	The type of owner, either User or Team.	projectProjectAutomation/Project
ownerId	Owner Id	projectProjectAutomation/Project
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectProjectAutomation/Project
owningUser	Unique identifier of the user that owns the activity.	projectProjectAutomation/Project
owningTeam	Unique identifier for the team that owns the record.	projectProjectAutomation/Project
timeZoneRuleVersionNumber	For internal use only.	projectProjectAutomation/Project
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectProjectAutomation/Project
versionNumber	Version Number	projectProjectAutomation/Project
projectId	Shows the entity instances.	projectProjectAutomation/Project
stateCode	Status of the Project	projectProjectAutomation/Project
stateCode_display		projectProjectAutomation/Project
statusCode	Reason for the status of the Project	projectProjectAutomation/Project
statusCode_display		projectProjectAutomation/Project
subject	Type the name of the custom entity.	projectProjectAutomation/Project
processId	Contains the id of the process associated with the entity.	projectProjectAutomation/Project
stageId	Contains the id of the stage where the entity is located.	projectProjectAutomation/Project
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	projectProjectAutomation/Project
actualDuration	Shows the actual duration of the project in minutes.	projectProjectAutomation/Project
actualEnd	Enter the actual end time of the project.	projectProjectAutomation/Project
actualExpenseCost	Shows the aggregate of actual expense cost on the project.	projectProjectAutomation/Project
transactionCurrencyId	Shows the currency associated with the entity.	projectProjectAutomation/Project
exchangeRate	Shows the exchange rate for the currency associated with the entity with respect to the base currency.	projectProjectAutomation/Project
actualexpensecostBase	Value of the Actual Expense Cost in base currency.	projectProjectAutomation/Project
actualHours	Shows the total actual hours of the project	projectProjectAutomation/Project
actualLaborCost	Shows the aggregate of actual labor cost on the project.	projectProjectAutomation/Project
actuallaborcostBase	Value of the Actual Labor Cost in base currency.	projectProjectAutomation/Project
actualSales	Shows the actual sales value.	projectProjectAutomation/Project
actualsalesBase	Shows the value of the actual sales in the base currency.	projectProjectAutomation/Project
actualStart	Enter the actual start time of the project.	projectProjectAutomation/Project
bulkGenerationStatus	The status of the bulk generation operations running on the project entity. If no operation is running, the value is null.	projectProjectAutomation/Project
bulkGenerationStatus_display		projectProjectAutomation/Project
calendarId	Id of the calendar for the project.	projectProjectAutomation/Project
comments	Enter the comments that are used to describe the current project status.	projectProjectAutomation/Project
contractOrganizationalUnitId	Select the organizational unit sponsoring the project.	projectProjectAutomation/Project
customer	Enter the customer who the project is associated with.	projectProjectAutomation/Project
description	Enter a description of the project.	projectProjectAutomation/Project
disableCreateOfTeamMemberForProjectManager	This is an internal field, mainly used during import so that we don't create a team member record for the project manager.	projectProjectAutomation/Project
effortestimateatcompleteEAC	Shows the total of actual hours and the remaining hours.	projectProjectAutomation/Project
projectExchangeRate	Exchange rate for the currency associated with the project with respect to the base currency.	projectProjectAutomation/Project
isLinkedToMSProjectClient	Specifies if the project is linked to a project in MS Project	projectProjectAutomation/Project
isTemplate	Shows if the project is a project template.	projectProjectAutomation/Project
linkedDocumentURL	The URL for the linked document.	projectProjectAutomation/Project
overallProjectStatus	Describes the project status.	projectProjectAutomation/Project
overallProjectStatus_display		projectProjectAutomation/Project
estimatedExpenseCost	Shows the aggregate of the planned expense cost of all the associated tasks.	projectProjectAutomation/Project
plannedexpensecostBase	Value of the Estimated Expense Cost in base currency.	projectProjectAutomation/Project
estimatedHours	Shows the total estimate hours of the project.	projectProjectAutomation/Project
estimatedLaborCost	Shows the aggregate of the planned labor cost of all the associated tasks.	projectProjectAutomation/Project
plannedlaborcostBase	Value of the Estimated Labor Cost in base currency.	projectProjectAutomation/Project
plannedSales	Shows the total planned sales.	projectProjectAutomation/Project
plannedSalesBase	Shows the value of the planned sales in the base currency.	projectProjectAutomation/Project
progress	Shows the actual hours divided by effort at estimate.	projectProjectAutomation/Project
projectManager	Shows the project manager assigned to the project.	projectProjectAutomation/Project
projectResourceRequirementsVisibleToResources	Indicates if the project resource requirements are visible to the resources assigned to the project.	projectProjectAutomation/Project
projectTeamId	Select the Team associated with Project.	projectProjectAutomation/Project
projectTemplate	Select the project template behind the project.	projectProjectAutomation/Project
remainingCost	Shows the difference between the estimated cost and the actual cost.	projectProjectAutomation/Project
remainingCostBase	Shows the value of the remaining cost in the base currency.	projectProjectAutomation/Project
remainingHours	Shows the difference between the estimate at completion (EAC) and the actual hours.	projectProjectAutomation/Project
remainingSales	Shows the difference between estimated sales and the actual sales.	projectProjectAutomation/Project
remainingSalesBase	Shows the value of the remaining sales in the base currency.	projectProjectAutomation/Project
salesOrderId	Shows the contract for this project.	projectProjectAutomation/Project
scheduledDurationMinutes	Shows the scheduled duration of the project, specified in minutes.	projectProjectAutomation/Project
estimatedFinishDate	Enter the scheduled end time of the project.	projectProjectAutomation/Project
scheduleStartDate	Enter the scheduled start time of the project.	projectProjectAutomation/Project
schedulePerformance	Describes the schedule performance of the project.	projectProjectAutomation/Project
schedulePerformance_display		projectProjectAutomation/Project
scheduleVariance	Shows the difference between the planned effort and the estimate at completion (EAC).	projectProjectAutomation/Project
stageName	Shows the stage of the project (Deprecated in v3.0).	projectProjectAutomation/Project
statusUpdatedOn	Shows the most recent update on a status field(comments or overall project status).	projectProjectAutomation/Project
totalActualCost	Shows the aggregated cost from actuals on the project.	projectProjectAutomation/Project
totalActualCostBase	Shows the value of the total actual cost in the base currency.	projectProjectAutomation/Project
totalPlannedCost	Shows the aggregate of the total planned cost of all the associated tasks.	projectProjectAutomation/Project
totalPlannedCostBase	Shows the value of the total planned cost in the base currency.	projectProjectAutomation/Project
wbsDuration	Shows the work breakdown structure (WBS) duration in days.	projectProjectAutomation/Project
workHourTemplate	Select the work hour template used to create the project calendar.	projectProjectAutomation/Project
costConsumption	Shows the actual cost divided by the estimated cost at completion.	projectProjectAutomation/Project
costEstimateAtComplete	Sum of Actual Cost and Remaining cost	projectProjectAutomation/Project
costEstimateAtCompleteBase	Value of the Cost estimate at completion (EAC) in base currency.	projectProjectAutomation/Project
costPerformence		projectProjectAutomation/Project
costPerformence_display		projectProjectAutomation/Project
costVariance	Variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC).	projectProjectAutomation/Project
costVarianceBase	Shows the value of the cost variance in the base currency.	projectProjectAutomation/Project
salesConsumption	Shows the actual sales divided by the estimated sales.	projectProjectAutomation/Project
salesEstimateAtCompleteEAC	Shows the total of actual and remaining sales.	projectProjectAutomation/Project
salesEstimateAtCompleteEACBase	Value of the Sales Estimate At Complete (EAC) in base currency.	projectProjectAutomation/Project
salesVariance	Shows the difference between the planned sales and the sales estimate at completion (EAC).	projectProjectAutomation/Project
salesVarianceBase	Shows the value of the sales variance in the base currency.	projectProjectAutomation/Project
teamSize	Shows the total number of team members assigned to this project	projectProjectAutomation/Project
teamsizeDate	Last Updated time of rollup field Team Size.	projectProjectAutomation/Project
teamsizeState	State of rollup field Team Size.	projectProjectAutomation/Project


*/