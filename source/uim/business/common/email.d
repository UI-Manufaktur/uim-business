module uim.business.common.email;

import uim.business;

@safe class DBUSEmail : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSEmail() { return new DBUSEmail; }
auto BUSEmail(UUID newId, string newName) { return new DBUSEmail(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSEmails {
  mixin(IEIEntitiesRest!("Email", "Emails"));
}

@safe class DBUSEmails : IBUSEmails {
  mixin(OEntitiesInner!("Email", "Emails"));
  mixin(OEntitiesRest!("Email", "Emails"));
}
/*
Attributes
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
versionNumber	Version Number	
activityTypeCode	Type of activity.	
activityId	Unique identifier of the activity.	
isBilled	Information regarding whether the fax activity was billed as part of resolving a case.	
isRegularActivity	Information regarding whether the activity is a regular activity type or event type.	
isWorkflowCreated	Information regarding whether the activity was created from a workflow rule.	
priorityCode	Priority of the activity.	
priorityCode_display		
regardingObjectTypeCode	The name of the entity linked by regardingObjectId	
regardingObjectId	Unique identifier of the object with which the activity is associated.	
scheduledEnd	Scheduled end time of the activity.	
scheduledStart	Scheduled start time of the activity.	
sortDate	Shows the date and time by which the activities are sorted.	
subject	Subject associated with the activity.	
scheduledDurationMinutes	Scheduled duration of the activity, specified in minutes.	
actualDurationMinutes	Actual duration of the activity in minutes.	
actualEnd	Actual end time of the activity.	
actualStart	Actual start time of the activity.	
category	Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	
subcategory	Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	
activityAdditionalParams	Additional information provided by the external application as JSON. For internal use only.	
to	Enter the account, contact, lead, or user recipients of the phone call.	
from	Enter the account, contact, lead, or user who made the phone call.	
BCC	Enter the recipients that are included on the activity distribution, but are not displayed to other recipients.	
CC	Enter the recipients that should be copied on the activity.	
sentOn	Date and time when the activity was sent.	
senderMailboxId	Unique identifier of the mailbox associated with the sender of the Email message.	
deliveryPriorityCode	Priority of delivery of the activity to the Email server.	
deliveryPriorityCode_display		
directionCode	Select the direction of the activity as incoming or outbound.	
statusCode	Select the Email's status.	
statusCode_display		
submittedBy	Shows the Microsoft Office Outlook account for the user who submitted the Email to Microsoft Dynamics 365.	
description	Type the greeting and message text of the Email.	
mimeType	MIME type of the Email message data.	
readReceiptRequested	Indicates that a read receipt is requested.	
trackingToken	Shows the tracking token assigned to the Email to make sure responses are automatically tracked in Microsoft Dynamics 365.	
sender	Sender of the Email.	
toRecipients	Shows the Email addresses corresponding to the recipients.	
deliveryReceiptRequested	Select whether the sender should receive confirmation that the Email was delivered.	
stateCode	Shows whether the Email is open, completed, or canceled. Completed and canceled Email is read-only and can't be edited.	
stateCode_display		
messageId	Unique identifier of the Email message. Used only for Email that is received.	
deliveryAttempts	Shows the count of the number of attempts made to send the Email. The count is used as an indicator of Email routing issues.	
compressed	Indicates if the body is compressed.	
notifications	Select the notification code to identify issues with the Email recipients or attachments, such as blocked attachments.	
notifications_display		
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
EmailSenderObjectTypeCode	The name of the entity linked by EmailSender	
EmailSender	Shows the sender of the Email.	
sendersAccountObjectTypeCode	The name of the entity linked by sendersAccount	
sendersAccount	Shows the parent account of the sender of the Email.	
attachmentCount	Shows the umber of attachments of the Email message.	
parentActivityId	Select the activity that the Email is associated with.	
inReplyTo	Type the ID of the Email message that this Email activity is a response to.	
baseConversationIndexHash	Hash of base of conversation index.	
conversationIndex	Identifier for all the Email responses for this conversation.	
correlationMethod	Shows how an Email is matched to an existing Email in Microsoft Dynamics 365. For system use only.	
correlationMethod_display		
postponeEmailProcessingUntil	For internal use only.	
processId	Shows the ID of the process.	
stageId	Shows the ID of the stage.	
isUnsafe	For internal use only.	
SLAId	Choose the service level agreement (SLA) that you want to apply to the Email record.	
SLAInvokedId	Last SLA that was applied to this Email. This field is for internal use only.	
onHoldTime	Shows how long, in minutes, that the record was on hold.	
lastOnHoldTime	Contains the date and time stamp of the last on hold time.	
traversedPath	For internal use only.	
attachmentOpenCount	Shows the number of times an Email attachment has been viewed.	
conversationTrackingId	Conversation Tracking Id.	
delayedEmailSendTime	Enter the expected date and time when Email will be sent.	
lastOpenedTime	Shows the latest date and time when Email was opened.	
linksClickedCount	Shows the number of times a link in an Email has been clicked.	
openCount	Shows the number of times an Email has been opened.	
replyCount	Shows the number of replies received for an Email.	
EmailTrackingId	Email Tracking Id.	
followEmailUserPreference	Select whether the Email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state.	
isEmailFollowed	For internal use only. Shows whether this Email is followed. This is evaluated state which overrides user selection of follow Email.	
EmailReminderExpiryTime	Shows the date and time when an Email reminder expires.	
EmailReminderType	Shows the type of the Email reminder.	
EmailReminderType_display		
EmailReminderStatus	Shows the status of the Email reminder.	
EmailReminderStatus_display		
EmailReminderText	For internal use only.	
templateId	For internal use only. ID for template used in Email.	
reminderActionCardId	Reminder Action Card Id.	
isEmailReminderSet	For internal use only. Shows whether this Email Reminder is Set.	

*/