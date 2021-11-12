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
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	
overriddenCreatedOn	Date and time that the record was migrated.	
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	
ownerIdType	The type of owner, either User or Team.	
ownerId	Owner Id	
owningBusinessUnit	Unique identifier for the business unit that owns the record	
owningUser	Unique identifier of the user that owns the activity.	
owningTeam	Unique identifier for the team that owns the record.	
timeZoneRuleVersionNumber	For internal use only.	
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	
projectTaskId	Shows the entity instances.	
stateCode	Status of the Project Task	
stateCode_display		
statusCode	Reason for the status of the Project Task	
statusCode_display		
projectTaskName	Type the name of the custom entity.	
actualCost	Enter the value of the actual cost consumed based on work reported to be completed on the task.	
transactionCurrencyId	Shows the currency associated with the entity.	
exchangeRate	Shows the exchange rate for the currency associated with the entity with respect to the base currency.	
actualCostBase	Value of the Actual Cost in base currency.	
actualDuration	Shows the actual duration of the project task in days	
actualEffort	Shows the hours submitted against the task.	
actualEndDateTime	Enter the actual end time of the project task.	
actualSales	Actual Sales Amount	
actualsalesBase	Shows the value of the actual sales in the base currency.	
actualStart	Enter the actual start time of the project task.	
aggregationDirection	Shows whether the aggregation is happening upstream or downstream.	
aggregationDirection_display		
assignedResources	Type the project team members that are assigned to task.	
assignedTeamMembers	Select the project team member that has been assigned to a task.	
autoScheduling	Shows whether auto scheduling was used for this task.	
costEstimateContour	The cost estimate contour for the task	
description	Enter a description of the project task.	
duration	Shows the duration in days for the task.	
effort	Shows the effort hours required for the task.	
effortContour	The effort distribution	
effortEstimateAtComplete	Shows the forecast of total effort to complete the task.	
isLineTask	Shows whether the task is a line task	
isMilestone	Show whether this task is a milestone.	
MSProjectClientId	The id of the project task in MS Project Client.	
numberOfResources	Shows the number of resources that are estimated for the task. This is not the number of resources assigned to the task.	
parentTask	Select the summary or parent task in the hierarchy that contains a child task.	
plannedCost	Enter the value of the cost the service provider will incur based on the estimated work and cost rates in the pricelist.	
plannedCostBase	Enter the value of cost estimated in base currency.	
plannedSales	Planned Sales Amount	
plannedSalesBase	Shows the value of the planned sales in the base currency.	
pluginProcessingData	Processing data for the plugin pipeline	
progress	Enter the percentage indicating work completed.	
project	Select the project name.	
remainingCost	Enter the cost left over that can be consumed for future work.	
remainingCostBase	Shows the value of the remaining cost in the base currency.	
remainingHours	Shows the hours remaining to complete the task.	
remainingSales	Remaining Sales Amount	
remainingSalesBase	Shows the value of the remaining sales in the base currency.	
requestedHours	Shows the hours assigned by generic resource.	
resourceCategory	Select the resource role for the task.	
resourceOrganizationalUnitId	Select the organizational unit of the resource who should perform the work.	
resourceUtilization	Shows the utilization units for a resource that is assigned to a project task	
salesEstimateContour	The sales estimate contour	
scheduledDurationMinutes	Shows the scheduled duration of the project task, specified in minutes.	
dueDate	Enter the scheduled end time of the project.	
scheduledHours	Shows the scheduled hours for the task.	
scheduleStartDate	Enter the scheduled start time of the project task.	
scheduleVariance	Shows the variance between the estimated work and the forecasted work based on the estimate at completion (EAC).	
skipUpdateEstimateLine	Internal flag to avoid the update process on the estimate lines of the project task	
transactionCategory	Select the transaction category for the task.	
WBSID	Shows the ID of the task in the work breakdown structure (WBS).	
processId	Contains the id of the process associated with the entity.	
stageId	Unique identifier of the Stage.	
traversedPath	A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
costAtCompleteEstimate	Enter the forecast of the total cost to complete the task.	
costAtCompleteEstimateBase	Value of the Cost estimate at complete (EAC) in base currency.	
costConsumptionPercentage	Enter the consumption of the total cost in percentage.	
salesConsumptionPercentage	Shows the sales consumption percentage for this task.	
salesEstimateAtComplete	Shows the sales estimate at the completion of this task.	
salesEstimateAtCompleteBase	Value of the Sales Estimate At Complete (EAC) in base currency.	
salesVariance	Shows the sales variance for this task.	
salesVarianceBase	Shows the value of the sales variance in the base currency.	
varianceOfCost	Enter the variance between the estimated cost and the forecasted cost based on the estimate at completion (EAC).	
varianceOfCostBase	Shows the value of the cost variance in the base currency.	


*/