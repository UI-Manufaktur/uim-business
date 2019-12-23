module uim.business.projects.approval;

import uim.business;

@safe class DBUSProjectApproval : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSProjectApproval() { return new DBUSProjectApproval; }
auto BUSProjectApproval(UUID newId, string newName) { return new DBUSProjectApproval(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSProjectApprovals {
  mixin(IEIEntitiesRest!("ProjectApproval", "ProjectApprovals"));
}

@safe class DBUSProjectApprovals : IBUSProjectApprovals {
  mixin(OEntitiesInner!("ProjectApproval", "ProjectApprovals"));
  mixin(OEntitiesRest!("ProjectApproval", "ProjectApprovals"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	projectServiceAutomation/ProjectApproval
createdBy	Unique identifier of the user who created the record.	projectServiceAutomation/ProjectApproval
modifiedOn	Date and time when the record was modified.	projectServiceAutomation/ProjectApproval
modifiedBy	Unique identifier of the user who modified the record.	projectServiceAutomation/ProjectApproval
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	projectServiceAutomation/ProjectApproval
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	projectServiceAutomation/ProjectApproval
overriddenCreatedOn	Date and time that the record was migrated.	projectServiceAutomation/ProjectApproval
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	projectServiceAutomation/ProjectApproval
ownerIdType	The type of owner, either User or Team.	projectServiceAutomation/ProjectApproval
ownerId	Owner Id	projectServiceAutomation/ProjectApproval
owningBusinessUnit	Unique identifier for the business unit that owns the record	projectServiceAutomation/ProjectApproval
owningUser	Unique identifier of the user that owns the activity.	projectServiceAutomation/ProjectApproval
owningTeam	Unique identifier for the team that owns the record.	projectServiceAutomation/ProjectApproval
timeZoneRuleVersionNumber	For internal use only.	projectServiceAutomation/ProjectApproval
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	projectServiceAutomation/ProjectApproval
versionNumber	Version Number	projectServiceAutomation/ProjectApproval
projectApprovalId	Unique identifier for entity instances	projectServiceAutomation/ProjectApproval
stateCode	Status of the ApprovalsTable	projectServiceAutomation/ProjectApproval
stateCode_display		projectServiceAutomation/ProjectApproval
statusCode	Reason for the status of the ApprovalsTable	projectServiceAutomation/ProjectApproval
statusCode_display		projectServiceAutomation/ProjectApproval
name	The name of the custom entity.	projectServiceAutomation/ProjectApproval
approvedBy	Shows the name of the approver.	projectServiceAutomation/ProjectApproval
approvedOn	Shows the date of the approval.	projectServiceAutomation/ProjectApproval
billingType	Billing type for the project approval line.	projectServiceAutomation/ProjectApproval
billingType_display		projectServiceAutomation/ProjectApproval
bookableResource	Shows the resource that the entry is submitted for.	projectServiceAutomation/ProjectApproval
costPrice	Shows the cost price of the transaction.	projectServiceAutomation/ProjectApproval
transactionCurrencyId	Shows the currency associated with the entity.	projectServiceAutomation/ProjectApproval
exchangeRate	Exchange rate for the currency associated with the entity with respect to the base currency.	projectServiceAutomation/ProjectApproval
costPriceBase	Value of the Cost Price in base currency.	projectServiceAutomation/ProjectApproval
costQuantity	Shows the hours submitted for the transaction.	projectServiceAutomation/ProjectApproval
date	Shows the date of the transaction.	projectServiceAutomation/ProjectApproval
entryType	Shows the entry type of the transaction.	projectServiceAutomation/ProjectApproval
entryType_display		projectServiceAutomation/ProjectApproval
expenseCategory	Shows the expense category of the transaction.	projectServiceAutomation/ProjectApproval
expenseEntry	Expense Entry Id.	projectServiceAutomation/ProjectApproval
externalComments	Shows the external comments entered for the transaction.	projectServiceAutomation/ProjectApproval
hasReceipt	Shows whether the transaction has a receipt.	projectServiceAutomation/ProjectApproval
internalComments	Shows the internal comments entered for the transaction.	projectServiceAutomation/ProjectApproval
journalTransaction	Shows whether the transaction was entered by a journal.	projectServiceAutomation/ProjectApproval
manager	Shows the manager of the person who submitted the transaction.	projectServiceAutomation/ProjectApproval
project	Shows the project for the transaction.	projectServiceAutomation/ProjectApproval
projectTask	Shows the project task for the transaction.	projectServiceAutomation/ProjectApproval
recordStage	Shows the stage of the record.	projectServiceAutomation/ProjectApproval
recordStage_display		projectServiceAutomation/ProjectApproval
referenceExpenseId	Shows the reference ID for the expense entry.	projectServiceAutomation/ProjectApproval
referenceJournalLine	Shows the journal line ID for the journal transaction.	projectServiceAutomation/ProjectApproval
referenceTimeId		projectServiceAutomation/ProjectApproval
resourceCategory	Shows the role for the resource for this transaction.	projectServiceAutomation/ProjectApproval
salesPrice	Shows the sales price of the transaction.	projectServiceAutomation/ProjectApproval
salesPriceBase	Value of the Sales Price in base currency.	projectServiceAutomation/ProjectApproval
salesQuantity	Shows the billable hours for the transaction.	projectServiceAutomation/ProjectApproval
submittedBy	Resource that has submitted the entry for approval.	projectServiceAutomation/ProjectApproval
timeEntry	Time Entry Id.	projectServiceAutomation/ProjectApproval
transactionCategory	Shows the transaction category.	projectServiceAutomation/ProjectApproval
costAmount	Shows the cost amount of the transaction.	projectServiceAutomation/ProjectApproval
costAmountBase	Value of the Cost Amount in base currency.	projectServiceAutomation/ProjectApproval
salesAmount	Shows the sales amount of the transaction.	projectServiceAutomation/ProjectApproval
salesAmountBase	Value of the Sales Amount in base currency.	projectServiceAutomation/ProjectApproval

*/