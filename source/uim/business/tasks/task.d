module uim.business.tasks.task;

import uim.business;

@safe class DBUSTask : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSTask() { return new DBUSTask; }
auto BUSTask(UUID newId, string newName) { return new DBUSTask(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSTasks {
  mixin(IEIEntitiesRest!("Task", "Tasks"));
}

@safe class DBUSTasks : IBUSTasks {
  mixin(OEntitiesInner!("Task", "Tasks"));
  mixin(OEntitiesRest!("Task", "Tasks"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/ProjectTask
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/ProjectTask
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/ProjectTask
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/ProjectTask
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/ProjectTask
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/ProjectTask
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/ProjectTask
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/ProjectTask
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/ProjectTask
ownerId	Owner Id	projectServiceAutomation/ProjectTask
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/ProjectTask
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/ProjectTask
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/ProjectTask
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/ProjectTask
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/ProjectTask
versionNumber	Version Number	projectServiceAutomation/ProjectTask
projectTaskId	Shows the entity instances.	projectServiceAutomation/ProjectTask
stateCode	Status of the Project Task	projectServiceAutomation/ProjectTask
stateCode_display		projectServiceAutomation/ProjectTask
statusCode	Reason for the status of the Project Task	projectServiceAutomation/ProjectTask
statusCode_display		projectServiceAutomation/ProjectTask
projectTaskName	Type the name of the custom entity.	projectServiceAutomation/ProjectTask
actualCost	Enter the value of the actual cost consumed based on work reported to be completed on the task.	projectServiceAutomation/ProjectTask
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/ProjectTask
exchangeRate	Shows the exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/ProjectTask
actualCostBase	Value of the Actual Cost in base currency.	projectServiceAutomation/ProjectTask
actualDuration	Shows the actual duration of the project task in days	projectServiceAutomation/ProjectTask
actualEffort	Shows the hours submitted against the task.	projectServiceAutomation/ProjectTask
actualEndDateTime	Enter the actual end time of the project task.	projectServiceAutomation/ProjectTask
actualSales	Actual Sales Amount	projectServiceAutomation/ProjectTask
actualsalesBase	Shows the value of the actual sales in the base currency.	projectServiceAutomation/ProjectTask
actualStart	Enter the actual start time of the project task.	projectServiceAutomation/ProjectTask
aggregationDirection	Shows whether the aggregation is happening upstream or downstream.	projectServiceAutomation/ProjectTask
aggregationDirection_display		projectServiceAutomation/ProjectTask
assignedResources	Type the project team members that are assigned to task.	projectServiceAutomation/ProjectTask
assignedTeamMembers	Select the project team member that has been assigned to a task.	projectServiceAutomation/ProjectTask
autoScheduling	Shows whether auto scheduling was used for this task.	projectServiceAutomation/ProjectTask
costEstimateContour	The cost estimate contour for the task	projectServiceAutomation/ProjectTask
description	Enter a description of the project task.	projectServiceAutomation/ProjectTask
duration	Shows the duration in days for the task.	projectServiceAutomation/ProjectTask
effort	Shows the effort hours required for the task.	projectServiceAutomation/ProjectTask
effortContour	The effort distribution	projectServiceAutomation/ProjectTask
effortEstimateAtComplete	Shows the forecast of total effort to complete the task.	projectServiceAutomation/ProjectTask
isLineTask	Shows whether the task is a line task	projectServiceAutomation/ProjectTask
isMilestone	Show whether this task is a milestone.	projectServiceAutomation/ProjectTask
MSProjectClientId	The id of the project task in MS Project Client.	projectServiceAutomation/ProjectTask
numberOfResources	Shows the number of resources that are estimated for the task. This is not the number of resources assigned to the task.	projectServiceAutomation/ProjectTask
parentTask	Select the summary or parent task in the hierarchy that contains a child task.	projectServiceAutomation/ProjectTask
plannedCost	Enter the value of the cost the service provider will incur based on the estimated work and cost rates in the pricelist.	projectServiceAutomation/ProjectTask
plannedCostBase	Enter the value of cost estimated in base currency.	projectServiceAutomation/ProjectTask
plannedSales	Planned Sales Amount	projectServiceAutomation/ProjectTask
plannedSalesBase	Shows the value of the planned sales in the base currency.	projectServiceAutomation/ProjectTask
pluginProcessingData	Processing data for the plugin pipeline	projectServiceAutomation/ProjectTask
progress	Enter the percentage indicating work completed.	projectServiceAutomation/ProjectTask
project	Select the project name.	projectServiceAutomation/ProjectTask
remainingCost	Enter the cost left over that can be consumed for future work.	projectServiceAutomation/ProjectTask
remainingCostBase	Shows the value of the remaining cost in the base currency.	projectServiceAutomation/ProjectTask
remainingHours	Shows the hours remaining to complete the task.	projectServiceAutomation/ProjectTask
remainingSales	Remaining Sales Amount	projectServiceAutomation/ProjectTask
remainingSalesBase	Shows the value of the remaining sales in the base currency.	projectServiceAutomation/ProjectTask
requestedHours	Shows the hours assigned by generic resource.	projectServiceAutomation/ProjectTask
resourceCategory	Select the resource role for the task.	projectServiceAutomation/ProjectTask
resourceOrganizationalUnitId	Select the organizational unit of the resource who should perform the work.	projectServiceAutomation/ProjectTask
resourceUtilization	Shows the utilization units for a resource that is assigned to a project task	projectServiceAutomation/ProjectTask
salesEstimateContour	The sales estimate contour	projectServiceAutomation/ProjectTask
scheduledDurationMinutes	Shows the scheduled duration of the project task, specified in minutes.	projectServiceAutomation/ProjectTask
dueDate	Enter the scheduled end time of the project.	projectServiceAutomation/ProjectTask
scheduledHours	Shows the scheduled hours for the task.	projectServiceAutomation/ProjectTask
scheduleStartDate	Enter the scheduled start time of the project task.	projectServiceAutomation/ProjectTask
scheduleVariance	Shows the variance between the estimated work and the forecasted work based on the estimate at completion (EAC).	projectServiceAutomation/ProjectTask
skipUpdateEstimateLine	Internal flag to avoid the update process on the estimate lines of the project task	projectServiceAutomation/ProjectTask
transactionCategory	Select the transaction category for the task.	projectServiceAutomation/ProjectTask
WBSID	Shows the ID of the task in the work breakdown structure (WBS).	projectServiceAutomation/ProjectTask
processId	Contains the id of the process associated with the entity.	projectServiceAutomation/ProjectTask
stageId	Unique identifier of the Stage.	projectServiceAutomation/ProjectTask
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	projectServiceAutomation/ProjectTask
costAtCompleteEstimate	Enter the forecast of the total cost to complete the task.	projectServiceAutomation/ProjectTask
costAtCompleteEstimateBase	Value of the Cost estimate at complete (EAC) in base currency.	projectServiceAutomation/ProjectTask
costConsumptionPercentage	Enter the consumption of the total cost in percentage.	projectServiceAutomation/ProjectTask
salesConsumptionPercentage	Shows the sales consumption percentage for this task.	projectServiceAutomation/ProjectTask
salesEstimateAtComplete	Shows the sales estimate at the completion of this task.	projectServiceAutomation/ProjectTask
salesEstimateAtCompleteBase	Value of the Sales Estimate At Complete (EAC) in base currency.	projectServiceAutomation/ProjectTask
salesVariance	Shows the sales variance for this task.	projectServiceAutomation/ProjectTask
salesVarianceBase	Shows the value of the sales variance in the base currency.	projectServiceAutomation/ProjectTask
varianceOfCost	Enter the variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC).	projectServiceAutomation/ProjectTask
varianceOfCostBase	Shows the value of the cost variance in the base currency.	projectServiceAutomation/ProjectTask


*/