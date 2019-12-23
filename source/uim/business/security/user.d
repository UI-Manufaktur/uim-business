module uim.business.security.user;

import uim.business;

// User - Person with access to UIM business system
@safe class DBUSUser : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSUser() { return new DBUSUser; }
auto BUSUser(UUID newId, string newName) { return new DBUSUser(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSUsers {
  mixin(IEIEntitiesRest!("User", "Users"));
}

@safe class DBUSUsers : IBUSUsers {
  mixin(OEntitiesInner!("User", "Users"));
  mixin(OEntitiesRest!("User", "Users"));
}

/*

Name	Description	First Included in Instance
systemUserId	Unique identifier for the user.	applicationCommon/User
organizationId	Unique identifier of the organization associated with the user.	applicationCommon/User
businessUnitId	Unique identifier of the business unit with which the user is associated.	applicationCommon/User
parentSystemUserId	Unique identifier of the manager of the user.	applicationCommon/User
firstName	First name of the user.	applicationCommon/User
salutation	Salutation for correspondence with the user.	applicationCommon/User
middleName	Middle name of the user.	applicationCommon/User
lastName	Last name of the user.	applicationCommon/User
personalEMailAddress	Personal email address of the user.	applicationCommon/User
fullName	Full name of the user.	applicationCommon/User
nickName	Nickname of the user.	applicationCommon/User
title	Title of the user.	applicationCommon/User
internalEMailAddress	Internal email address for the user.	applicationCommon/User
jobTitle	Job title of the user.	applicationCommon/User
mobileAlertEMail	Mobile alert email address for the user.	applicationCommon/User
preferredEmailCode	Preferred email address for the user.	applicationCommon/User
preferredEmailCode_display		applicationCommon/User
homePhone	Home phone number for the user.	applicationCommon/User
mobilePhone	Mobile phone number for the user.	applicationCommon/User
preferredPhoneCode	Preferred phone number for the user.	applicationCommon/User
preferredPhoneCode_display		applicationCommon/User
preferredAddressCode	Preferred address for the user.	applicationCommon/User
preferredAddressCode_display		applicationCommon/User
photoUrl	URL for the Website on which a photo of the user is located.	applicationCommon/User
domainName	Active Directory domain of which the user is a member.	applicationCommon/User
passportLo	For internal use only.	applicationCommon/User
createdOn	Date and time when the user was created.	applicationCommon/User
passportHi	For internal use only.	applicationCommon/User
disabledReason	Reason for disabling the user.	applicationCommon/User
modifiedOn	Date and time when the user was last modified.	applicationCommon/User
createdBy	Unique identifier of the user who created the user.	applicationCommon/User
employeeId	Employee identifier for the user.	applicationCommon/User
modifiedBy	Unique identifier of the user who last modified the user.	applicationCommon/User
isDisabled	Information about whether the user is enabled.	applicationCommon/User
governmentId	Government identifier for the user.	applicationCommon/User
versionNumber	Version number of the user.	applicationCommon/User
address1AddressId	Unique identifier for address 1.	applicationCommon/User
address1AddressTypeCode	Type of address for address 1, such as billing, shipping, or primary address.	applicationCommon/User
address1AddressTypeCode_display		applicationCommon/User
address1Name	Name to enter for address 1.	applicationCommon/User
address1Line1	First line for entering address 1 information.	applicationCommon/User
address1Line2	Second line for entering address 1 information.	applicationCommon/User
address1Line3	Third line for entering address 1 information.	applicationCommon/User
address1City	City name for address 1.	applicationCommon/User
address1StateOrProvince	State or province for address 1.	applicationCommon/User
address1County	County name for address 1.	applicationCommon/User
address1Country	Country/region name in address 1.	applicationCommon/User
address1PostOfficeBox	Post office box number for address 1.	applicationCommon/User
address1PostalCode	ZIP Code or postal code for address 1.	applicationCommon/User
address1UTCOffset	UTC offset for address 1. This is the difference between local time and standard Coordinated Universal Time.	applicationCommon/User
address1UPSZone	United Parcel Service (UPS) zone for address 1.	applicationCommon/User
address1Latitude	Latitude for address 1.	applicationCommon/User
address1Telephone1	First telephone number associated with address 1.	applicationCommon/User
address1Longitude	Longitude for address 1.	applicationCommon/User
address1ShippingMethodCode	Method of shipment for address 1.	applicationCommon/User
address1ShippingMethodCode_display		applicationCommon/User
address1Telephone2	Second telephone number associated with address 1.	applicationCommon/User
address1Telephone3	Third telephone number associated with address 1.	applicationCommon/User
address1Fax	Fax number for address 1.	applicationCommon/User
address2AddressId	Unique identifier for address 2.	applicationCommon/User
address2AddressTypeCode	Type of address for address 2, such as billing, shipping, or primary address.	applicationCommon/User
address2AddressTypeCode_display		applicationCommon/User
address2Name	Name to enter for address 2.	applicationCommon/User
address2Line1	First line for entering address 2 information.	applicationCommon/User
address2Line2	Second line for entering address 2 information.	applicationCommon/User
address2Line3	Third line for entering address 2 information.	applicationCommon/User
address2City	City name for address 2.	applicationCommon/User
address2StateOrProvince	State or province for address 2.	applicationCommon/User
address2County	County name for address 2.	applicationCommon/User
address2Country	Country/region name in address 2.	applicationCommon/User
address2PostOfficeBox	Post office box number for address 2.	applicationCommon/User
address2PostalCode	ZIP Code or postal code for address 2.	applicationCommon/User
address2UTCOffset	UTC offset for address 2. This is the difference between local time and standard Coordinated Universal Time.	applicationCommon/User
address2UPSZone	United Parcel Service (UPS) zone for address 2.	applicationCommon/User
address2Latitude	Latitude for address 2.	applicationCommon/User
address2Telephone1	First telephone number associated with address 2.	applicationCommon/User
address2Longitude	Longitude for address 2.	applicationCommon/User
address2ShippingMethodCode	Method of shipment for address 2.	applicationCommon/User
address2ShippingMethodCode_display		applicationCommon/User
address2Telephone2	Second telephone number associated with address 2.	applicationCommon/User
address2Telephone3	Third telephone number associated with address 2.	applicationCommon/User
address2Fax	Fax number for address 2.	applicationCommon/User
skills	Skill set of the user.	applicationCommon/User
displayInServiceViews	Whether to display the user in service views.	applicationCommon/User
calendarId	Fiscal calendar associated with the user.	applicationCommon/User
setupUser	Check if user is a setup user.	applicationCommon/User
windowsLiveID	Windows Live ID	applicationCommon/User
incomingEmailDeliveryMethod	Incoming email delivery method for the user.	applicationCommon/User
incomingEmailDeliveryMethod_display		applicationCommon/User
outgoingEmailDeliveryMethod	Outgoing email delivery method for the user.	applicationCommon/User
outgoingEmailDeliveryMethod_display		applicationCommon/User
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	applicationCommon/User
accessMode	Type of user.	applicationCommon/User
accessMode_display		applicationCommon/User
inviteStatusCode	User invitation status.	applicationCommon/User
inviteStatusCode_display		applicationCommon/User
overriddenCreatedOn	Date and time that the record was migrated.	applicationCommon/User
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	applicationCommon/User
timeZoneRuleVersionNumber	For internal use only.	applicationCommon/User
yomiFullName	Pronunciation of the full name of the user, written in phonetic hiragana or katakana characters.	applicationCommon/User
yomiLastName	Pronunciation of the last name of the user, written in phonetic hiragana or katakana characters.	applicationCommon/User
yomiMiddleName	Pronunciation of the middle name of the user, written in phonetic hiragana or katakana characters.	applicationCommon/User
yomiFirstName	Pronunciation of the first name of the user, written in phonetic hiragana or katakana characters.	applicationCommon/User
isIntegrationUser	Check if user is an integration user.	applicationCommon/User
defaultFiltersPopulated	Indicates if default outlook filters have been populated.	applicationCommon/User
createdOnBehalfBy	Unique identifier of the delegate user who created the systemuser.	applicationCommon/User
queueId	Unique identifier of the default queue for the user.	applicationCommon/User
modifiedOnBehalfBy	Unique identifier of the delegate user who last modified the systemuser.	applicationCommon/User
emailRouterAccessApproval	Shows the status of the primary email address.	applicationCommon/User
emailRouterAccessApproval_display		applicationCommon/User
transactionCurrencyId	Unique identifier of the currency associated with the systemuser.	applicationCommon/User
exchangeRate	Exchange rate for the currency associated with the systemuser with respect to the base currency.	applicationCommon/User
CALType	License type of user.	applicationCommon/User
CALType_display		applicationCommon/User
isLicensed	Information about whether the user is licensed.	applicationCommon/User
isSyncWithDirectory	Information about whether the user is synced with the directory.	applicationCommon/User
yammerEmailAddress	User's Yammer login email address	applicationCommon/User
yammerUserId	User's Yammer ID	applicationCommon/User
defaultMailbox	Select the mailbox associated with this user.	applicationCommon/User
userLicenseType	Shows the type of user license.	applicationCommon/User
entityImageId	For internal use only.	applicationCommon/User
address2Composite	Shows the complete secondary address.	applicationCommon/User
address1Composite	Shows the complete primary address.	applicationCommon/User
processId	Shows the ID of the process.	applicationCommon/User
stageId	Shows the ID of the stage.	applicationCommon/User
isEmailAddressApprovedByO365Admin	Shows the status of approval of the email address by O365 Admin.	applicationCommon/User
positionId	User's position in hierarchical security model.	applicationCommon/User
traversedPath	For internal use only.	applicationCommon/User
sharePointEmailAddress	SharePoint Work Email Address	applicationCommon/User
mobileOfflineProfileId	Items contained with a particular SystemUser.	applicationCommon/User
defaultOdbFolderName	Type a default folder name for the user's OneDrive For Business location.	applicationCommon/User
applicationId	The identifier for the application. This is used to access data in another application.	applicationCommon/User
applicationIdUri	The URI used as a unique logical identifier for the external app. This can be used to validate the application.	applicationCommon/User
azureActiveDirectoryObjectId	This is the application directory object Id.	applicationCommon/User
identityId	For internal use only.	applicationCommon/User
territoryId	Unique identifier of the territory to which the user is assigned.	applicationCommon/User

*/