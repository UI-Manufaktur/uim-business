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

@path("/api/demo/")
interface IBUSEmails {
  mixin(IEntitiesFragment!("email", "emails"));
}

@safe class DBUSEmails : IBUSEmails {
  this() {
    _entities ~= new DBUSEmail(randomUUID, "hallo");
    _entities ~= new DBUSEmail(randomUUID, "world");
  }

  DBUSEmail[] _entities;

  DBUSEmail[] all() { 
    DBUSEmail[] results;  
    foreach(entity; _entities) results ~= entity;
    return results;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSEmail get(string _id) { 
    DBUSEmail result;

    result = _entities[0];

    return result;
  }

  DBUSEmail[] versions(string _id) { 
    DBUSEmail[] results;
  
    foreach(entity; _entities) results ~= entity;

    return results;
  }

  bool exists(string _id) {
    return true;
  }

	DBUSEmail create(DBUSEmail entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSEmail update(DBUSEmail entity) {
   return entity; 
  }
}
/*
Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	applicationCommon/Email
createdBy	Unique identifier of the user who created the record.	applicationCommon/Email
modifiedOn	Date and time when the record was modified.	applicationCommon/Email
modifiedBy	Unique identifier of the user who modified the record.	applicationCommon/Email
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	applicationCommon/Email
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	applicationCommon/Email
overriddenCreatedOn	Date and time that the record was migrated.	applicationCommon/Email
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	applicationCommon/Email
ownerIdType	The type of owner, either User or Team.	applicationCommon/Email
ownerId	Owner Id	applicationCommon/Email
owningBusinessUnit	Unique identifier for the business unit that owns the record	applicationCommon/Email
owningUser	Unique identifier of the user that owns the activity.	applicationCommon/Email
owningTeam	Unique identifier for the team that owns the record.	applicationCommon/Email
timeZoneRuleVersionNumber	For internal use only.	applicationCommon/Email
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	applicationCommon/Email
versionNumber	Version Number	applicationCommon/Email
activityTypeCode	Type of activity.	applicationCommon/Email
activityId	Unique identifier of the activity.	applicationCommon/Email
isBilled	Information regarding whether the fax activity was billed as part of resolving a case.	applicationCommon/Email
isRegularActivity	Information regarding whether the activity is a regular activity type or event type.	applicationCommon/Email
isWorkflowCreated	Information regarding whether the activity was created from a workflow rule.	applicationCommon/Email
priorityCode	Priority of the activity.	applicationCommon/Email
priorityCode_display		applicationCommon/Email
regardingObjectTypeCode	The name of the entity linked by regardingObjectId	applicationCommon/Email
regardingObjectId	Unique identifier of the object with which the activity is associated.	applicationCommon/Email
scheduledEnd	Scheduled end time of the activity.	applicationCommon/Email
scheduledStart	Scheduled start time of the activity.	applicationCommon/Email
sortDate	Shows the date and time by which the activities are sorted.	applicationCommon/Email
subject	Subject associated with the activity.	applicationCommon/Email
scheduledDurationMinutes	Scheduled duration of the activity, specified in minutes.	applicationCommon/Email
actualDurationMinutes	Actual duration of the activity in minutes.	applicationCommon/Email
actualEnd	Actual end time of the activity.	applicationCommon/Email
actualStart	Actual start time of the activity.	applicationCommon/Email
category	Type a category to identify the activity type, such as lead outreach, customer follow-up, or service alert, to tie the eactivity to a business group or function.	applicationCommon/Email
subcategory	Type a subcategory to identify the activity type and relate the activity to a specific product, sales region, business group, or other function.	applicationCommon/Email
activityAdditionalParams	Additional information provided by the external application as JSON. For internal use only.	applicationCommon/Email
to	Enter the account, contact, lead, or user recipients of the phone call.	applicationCommon/Email
from	Enter the account, contact, lead, or user who made the phone call.	applicationCommon/Email
BCC	Enter the recipients that are included on the activity distribution, but are not displayed to other recipients.	applicationCommon/Email
CC	Enter the recipients that should be copied on the activity.	applicationCommon/Email
sentOn	Date and time when the activity was sent.	applicationCommon/Email
senderMailboxId	Unique identifier of the mailbox associated with the sender of the email message.	applicationCommon/Email
deliveryPriorityCode	Priority of delivery of the activity to the email server.	applicationCommon/Email
deliveryPriorityCode_display		applicationCommon/Email
directionCode	Select the direction of the activity as incoming or outbound.	applicationCommon/Email
statusCode	Select the email's status.	applicationCommon/Email
statusCode_display		applicationCommon/Email
submittedBy	Shows the Microsoft Office Outlook account for the user who submitted the email to Microsoft Dynamics 365.	applicationCommon/Email
description	Type the greeting and message text of the email.	applicationCommon/Email
mimeType	MIME type of the email message data.	applicationCommon/Email
readReceiptRequested	Indicates that a read receipt is requested.	applicationCommon/Email
trackingToken	Shows the tracking token assigned to the email to make sure responses are automatically tracked in Microsoft Dynamics 365.	applicationCommon/Email
sender	Sender of the email.	applicationCommon/Email
toRecipients	Shows the email addresses corresponding to the recipients.	applicationCommon/Email
deliveryReceiptRequested	Select whether the sender should receive confirmation that the email was delivered.	applicationCommon/Email
stateCode	Shows whether the email is open, completed, or canceled. Completed and canceled email is read-only and can't be edited.	applicationCommon/Email
stateCode_display		applicationCommon/Email
messageId	Unique identifier of the email message. Used only for email that is received.	applicationCommon/Email
deliveryAttempts	Shows the count of the number of attempts made to send the email. The count is used as an indicator of email routing issues.	applicationCommon/Email
compressed	Indicates if the body is compressed.	applicationCommon/Email
notifications	Select the notification code to identify issues with the email recipients or attachments, such as blocked attachments.	applicationCommon/Email
notifications_display		applicationCommon/Email
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	applicationCommon/Email
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	applicationCommon/Email
emailSenderObjectTypeCode	The name of the entity linked by emailSender	applicationCommon/Email
emailSender	Shows the sender of the email.	applicationCommon/Email
sendersAccountObjectTypeCode	The name of the entity linked by sendersAccount	applicationCommon/Email
sendersAccount	Shows the parent account of the sender of the email.	applicationCommon/Email
attachmentCount	Shows the umber of attachments of the email message.	applicationCommon/Email
parentActivityId	Select the activity that the email is associated with.	applicationCommon/Email
inReplyTo	Type the ID of the email message that this email activity is a response to.	applicationCommon/Email
baseConversationIndexHash	Hash of base of conversation index.	applicationCommon/Email
conversationIndex	Identifier for all the email responses for this conversation.	applicationCommon/Email
correlationMethod	Shows how an email is matched to an existing email in Microsoft Dynamics 365. For system use only.	applicationCommon/Email
correlationMethod_display		applicationCommon/Email
postponeEmailProcessingUntil	For internal use only.	applicationCommon/Email
processId	Shows the ID of the process.	applicationCommon/Email
stageId	Shows the ID of the stage.	applicationCommon/Email
isUnsafe	For internal use only.	applicationCommon/Email
SLAId	Choose the service level agreement (SLA) that you want to apply to the email record.	applicationCommon/Email
SLAInvokedId	Last SLA that was applied to this email. This field is for internal use only.	applicationCommon/Email
onHoldTime	Shows how long, in minutes, that the record was on hold.	applicationCommon/Email
lastOnHoldTime	Contains the date and time stamp of the last on hold time.	applicationCommon/Email
traversedPath	For internal use only.	applicationCommon/Email
attachmentOpenCount	Shows the number of times an email attachment has been viewed.	applicationCommon/Email
conversationTrackingId	Conversation Tracking Id.	applicationCommon/Email
delayedEmailSendTime	Enter the expected date and time when email will be sent.	applicationCommon/Email
lastOpenedTime	Shows the latest date and time when email was opened.	applicationCommon/Email
linksClickedCount	Shows the number of times a link in an email has been clicked.	applicationCommon/Email
openCount	Shows the number of times an email has been opened.	applicationCommon/Email
replyCount	Shows the number of replies received for an email.	applicationCommon/Email
emailTrackingId	Email Tracking Id.	applicationCommon/Email
followEmailUserPreference	Select whether the email allows following recipient activities sent from Microsoft Dynamics 365.This is user preference state which can be overridden by system evaluated state.	applicationCommon/Email
isEmailFollowed	For internal use only. Shows whether this email is followed. This is evaluated state which overrides user selection of follow email.	applicationCommon/Email
emailReminderExpiryTime	Shows the date and time when an email reminder expires.	applicationCommon/Email
emailReminderType	Shows the type of the email reminder.	applicationCommon/Email
emailReminderType_display		applicationCommon/Email
emailReminderStatus	Shows the status of the email reminder.	applicationCommon/Email
emailReminderStatus_display		applicationCommon/Email
emailReminderText	For internal use only.	applicationCommon/Email
templateId	For internal use only. ID for template used in email.	applicationCommon/Email
reminderActionCardId	Reminder Action Card Id.	applicationCommon/Email
isEmailReminderSet	For internal use only. Shows whether this email Reminder is Set.	applicationCommon/Email

*/