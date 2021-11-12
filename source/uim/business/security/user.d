module uim.business.security.user;

import uim.business;

// User - Person with access to UIM business system
@safe class DBUSUser : DBUSObject {
    mixin(EntityThis!());
}
auto BUSUser() { return new DBUSUser; }
auto BUSUser(UUID newId, string newName) { return new DBUSUser(newId, newName); }
unittest {
  writeln(BUSUser(randomUUID, "test"));
}

@path(restPath)
interface IBUSUsers {
  mixin(IEIEntitiesRest!("User", "Users"));
}

@safe class DBUSUsers : IBUSUsers {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("User", "Users"));
  mixin(OEntitiesRest!("User", "Users"));
}

mixin(OString!"systemUserId"); /// Unique identifier for the user.	
mixin(OString!"organizationId"); /// Unique identifier of the organization associated with the user.	
mixin(OString!"businessUnitId"); /// Unique identifier of the business unit with which the user is associated.	
mixin(OString!"parentSystemUserId"); /// Unique identifier of the manager of the user.	
mixin(OString!"firstName"); /// First name of the user.	
mixin(OString!"salutation"); /// Salutation for correspondence with the user.	
mixin(OString!"middleName"); /// Middle name of the user.	
mixin(OString!"lastName"); /// Last name of the user.	
mixin(OString!"personalEMailAddress"); /// Personal email address of the user.	
mixin(OString!"fullName"); /// Full name of the user.	
mixin(OString!"nickName"); /// Nickname of the user.	
mixin(OString!"title"); /// Title of the user.	
mixin(OString!"internalEMailAddress"); /// Internal email address for the user.	
mixin(OString!"jobTitle"); /// Job title of the user.	
mixin(OString!"mobileAlertEMail"); /// Mobile alert email address for the user.	
mixin(OString!"preferredEmailCode"); /// Preferred email address for the user.	
mixin(OString!"preferredEmailCode_display	"); /// 	
mixin(OString!"homePhone"); /// Home phone number for the user.	
mixin(OString!"mobilePhone"); /// 	Mobile phone number for the user.	
mixin(OString!"preferredPhoneCode"); /// Preferred phone number for the user.	
mixin(OString!"preferredPhoneCode_display"); /// 	
mixin(OString!"preferredAddressCode"); /// Preferred address for the user.	
mixin(OString!"preferredAddressCode_display"); /// 		
mixin(OString!"photoUrl"); /// 	URL for the Website on which a photo of the user is located.	
mixin(OString!"domainName"); /// 	Active Directory domain of which the user is a member.	
mixin(OString!"passportLo"); /// 	For internal use only.	
mixin(OString!"createdOn"); /// 	Date and time when the user was created.	
mixin(OString!"passportHi"); /// 	For internal use only.	
mixin(OString!"disabledReason"); /// 	Reason for disabling the user.	
mixin(OString!"modifiedOn"); /// 	Date and time when the user was last modified.	
mixin(OString!"createdBy"); /// 	Unique identifier of the user who created the user.	
mixin(OString!"employeeId"); /// 	Employee identifier for the user.	
mixin(OString!"modifiedBy"); /// 	Unique identifier of the user who last modified the user.	
mixin(OString!"isDisabled"); /// 	Information about whether the user is enabled.	
mixin(OString!"governmentId"); /// 	Government identifier for the user.	
mixin(OString!"versionNumber"); /// 	Version number of the user.	
mixin(OString!"address1AddressId"); /// 	Unique identifier for address 1.	
mixin(OString!"address1AddressTypeCode"); /// 	Type of address for address 1, such as billing, shipping, or primary address.	
mixin(OString!"address1AddressTypeCode_display"); /// 		
mixin(OString!"address1Name"); /// 	Name to enter for address 1.	
mixin(OString!"address1Line1"); /// 	First line for entering address 1 information.	
mixin(OString!"address1Line2"); /// 	Second line for entering address 1 information.	
mixin(OString!"address1Line3"); /// 	Third line for entering address 1 information.	
mixin(OString!"address1City"); /// 	City name for address 1.	
mixin(OString!"address1StateOrProvince"); /// 	State or province for address 1.	
mixin(OString!"address1County"); /// 	County name for address 1.	
mixin(OString!"address1Country"); /// 	Country/region name in address 1.	
mixin(OString!"address1PostOfficeBox"); /// 	Post office box number for address 1.	
mixin(OString!"address1PostalCode"); /// 	ZIP Code or postal code for address 1.	
mixin(OString!"address1UTCOffset"); /// 	UTC offset for address 1. This is the difference between local time and standard Coordinated Universal Time.	
mixin(OString!"address1UPSZone"); /// 	United Parcel Service (UPS) zone for address 1.	
mixin(OString!"address1Latitude"); /// 	Latitude for address 1.	
mixin(OString!"address1Telephone1"); /// 	First telephone number associated with address 1.	
mixin(OString!"address1Longitude"); /// 	Longitude for address 1.	
mixin(OString!"address1ShippingMethodCode"); /// 	Method of shipment for address 1.	
mixin(OString!"address1ShippingMethodCode_display"); /// 		
mixin(OString!"address1Telephone2"); /// 	Second telephone number associated with address 1.	
mixin(OString!"address1Telephone3"); /// 	Third telephone number associated with address 1.	
mixin(OString!"address1Fax"); /// 	Fax number for address 1.	
mixin(OString!"address2AddressId"); /// 	Unique identifier for address 2.	
mixin(OString!"address2AddressTypeCode"); /// 	Type of address for address 2, such as billing, shipping, or primary address.	
mixin(OString!"address2AddressTypeCode_display"); /// 		
mixin(OString!"address2Name"); /// 	Name to enter for address 2.	
mixin(OString!"address2Line1"); /// 	First line for entering address 2 information.	
mixin(OString!"address2Line2"); /// 	Second line for entering address 2 information.	
mixin(OString!"address2Line3"); /// 	Third line for entering address 2 information.	
mixin(OString!"address2City"); /// 	City name for address 2.	
mixin(OString!"address2StateOrProvince"); /// 	State or province for address 2.	
mixin(OString!"address2County"); /// 	County name for address 2.	
mixin(OString!"address2Country"); /// 	Country/region name in address 2.	
mixin(OString!"address2PostOfficeBox"); /// 	Post office box number for address 2.	
mixin(OString!"address2PostalCode"); /// 	ZIP Code or postal code for address 2.	
mixin(OString!"address2UTCOffset"); /// 	UTC offset for address 2. This is the difference between local time and standard Coordinated Universal Time.	
mixin(OString!"address2UPSZone"); /// 	United Parcel Service (UPS) zone for address 2.	
mixin(OString!"address2Latitude"); /// 	Latitude for address 2.	
mixin(OString!"address2Telephone1"); /// 	First telephone number associated with address 2.	
mixin(OString!"address2Longitude"); /// 	Longitude for address 2.	
mixin(OString!"address2ShippingMethodCode"); /// 	Method of shipment for address 2.	
mixin(OString!"address2ShippingMethodCode_display"); /// 		
mixin(OString!"address2Telephone2"); /// 	Second telephone number associated with address 2.	
mixin(OString!"address2Telephone3"); /// 	Third telephone number associated with address 2.	
mixin(OString!"address2Fax"); /// 	Fax number for address 2.	
mixin(OString!"skills"); /// 	Skill set of the user.	
mixin(OString!"displayInServiceViews"); /// 	Whether to display the user in service views.	
mixin(OString!"calendarId"); /// 	Fiscal calendar associated with the user.	
mixin(OString!"setupUser"); /// 	Check if user is a setup user.	
mixin(OString!"windowsLiveID"); /// 	Windows Live ID	
mixin(OString!"incomingEmailDeliveryMethod"); /// 	Incoming email delivery method for the user.	
mixin(OString!"incomingEmailDeliveryMethod_display"); /// 		
mixin(OString!"outgoingEmailDeliveryMethod"); /// 	Outgoing email delivery method for the user.	
mixin(OString!"outgoingEmailDeliveryMethod_display"); /// 		
mixin(OString!"importSequenceNumber"); /// 	Unique identifier of the data import or data migration that created this record.	
mixin(OString!"accessMode"); /// Type of user.	
mixin(OString!"accessMode_display"); ///	
mixin(OString!"inviteStatusCode"); /// 	User invitation status.	
mixin(OString!"inviteStatusCode_display"); /// 		
mixin(OString!"overriddenCreatedOn"); /// 	Date and time that the record was migrated.	
mixin(OString!"UTCConversionTimeZoneCode"); /// 	Time zone code that was in use when the record was created.	
mixin(OString!"timeZoneRuleVersionNumber"); /// 	For internal use only.	
mixin(OString!"yomiFullName"); /// 	Pronunciation of the full name of the user, written in phonetic hiragana or katakana characters.	
mixin(OString!"yomiLastName"); /// 	Pronunciation of the last name of the user, written in phonetic hiragana or katakana characters.	
mixin(OString!"yomiMiddleName"); /// 	Pronunciation of the middle name of the user, written in phonetic hiragana or katakana characters.	
mixin(OString!"yomiFirstName"); /// 	Pronunciation of the first name of the user, written in phonetic hiragana or katakana characters.	
mixin(OString!"isIntegrationUser"); /// 	Check if user is an integration user.	
mixin(OString!"defaultFiltersPopulated"); /// 	Indicates if default outlook filters have been populated.	
mixin(OString!"createdOnBehalfBy"); /// 	Unique identifier of the delegate user who created the systemuser.	
mixin(OString!"queueId"); /// 	Unique identifier of the default queue for the user.	
mixin(OString!"modifiedOnBehalfBy"); /// 	Unique identifier of the delegate user who last modified the systemuser.	
mixin(OString!"emailRouterAccessApproval"); /// 	Shows the status of the primary email address.	
mixin(OString!"emailRouterAccessApproval_display"); /// 		
mixin(OString!"transactionCurrencyId"); /// 	Unique identifier of the currency associated with the systemuser.	
mixin(OString!"exchangeRate"); /// 	Exchange rate for the currency associated with the systemuser with respect to the base currency.	
mixin(OString!"CALType"); /// 	License type of user.	
mixin(OString!"CALType_display"); /// 		
mixin(OString!"isLicensed"); ///  Information about whether the user is licensed.	
mixin(OString!"isSyncWithDirectory"); /// 	Information about whether the user is synced with the directory.	
mixin(OString!"yammerEmailAddress"); /// 	User's Yammer login email address	
mixin(OString!"yammerUserId"); /// 	User's Yammer ID	
mixin(OString!"defaultMailbox"); /// 	Select the mailbox associated with this user.	
mixin(OString!"userLicenseType"); /// 	Shows the type of user license.	
mixin(OString!"entityImageId"); /// 	For internal use only.	
mixin(OString!"address2Composite"); /// 	Shows the complete secondary address.	
mixin(OString!"address1Composite"); /// 	Shows the complete primary address.	
mixin(OString!"processId"); /// 	Shows the ID of the process.	
mixin(OString!"stageId"); /// 	Shows the ID of the stage.	
mixin(OString!"isEmailAddressApprovedByO365Admin"); /// 	Shows the status of approval of the email address by O365 Admin.	
mixin(OString!"positionId"); /// 	User's position in hierarchical security model.	
mixin(OString!"traversedPath"); /// 	For internal use only.	
mixin(OString!"sharePointEmailAddress"); /// 	SharePoint Work Email Address	
mixin(OString!"mobileOfflineProfileId"); /// 	Items contained with a particular SystemUser.	
mixin(OString!"defaultOdbFolderName"); /// 	Type a default folder name for the user's OneDrive For Business location.	
mixin(OString!"applicationId"); /// 	The identifier for the application. This is used to access data in another application.	
mixin(OString!"applicationIdUri"); /// 	The URI used as a unique logical identifier for the external app. This can be used to validate the application.	
mixin(OString!"azureActiveDirectoryObjectId"); /// 	This is the application directory object Id.	
mixin(OString!"identityId"); /// 	For internal use only.	
mixin(OString!"territoryId"); /// 	Unique identifier of the territory to which the user is assigned.	
