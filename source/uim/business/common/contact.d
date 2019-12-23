module uim.business.common.contact;

import uim.business;

@safe class DBUSContact : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSContact() { return new DBUSContact; }
auto BUSContact(UUID newId, string newName) { return new DBUSContact(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSContacts {
  mixin(IEIEntitiesRest!("Contact", "Contacts"));
}

@safe class DBUSContacts : IBUSContacts {
  mixin(OEntitiesInner!("Contact", "Contacts"));
  mixin(OEntitiesRest!("Contact", "Contacts"));
}
/*
Attributes
Name	Description	First Included in Instance
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	
overriddenCreatedOn	Date and time that the record was migrated.	
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	
ownerIdType		
ownerId		
owningBusinessUnit	Unique identifier for the business unit that owns the record	
owningUser	Unique identifier of the user that owns the activity.	
owningTeam	Unique identifier for the team that owns the record.	
timeZoneRuleVersionNumber	For internal use only.	
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	
versionNumber	Version Number	
ContactId	Unique identifier of the Contact.	
customerSizeCode	Select the size of the Contact's company for segmentation and reporting purposes.	
customerSizeCode_display		
customerTypeCode	Select the category that best describes the relationship between the Contact and your organization.	
customerTypeCode_display		
preferredContactMethodCode	Select the preferred method of Contact.	
preferredContactMethodCode_display		
leadSourceCode	Select the primary marketing source that directed the Contact to your organization.	
leadSourceCode_display		
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	
paymentTermsCode_display		
shippingMethodCode	Select a shipping method for deliveries sent to this address.	
shippingMethodCode_display		
accountId	Unique identifier of the account with which the Contact is associated.	
participatesInWorkflow	Shows whether the Contact participates in workflow rules.	
isBackofficeCustomer	Select whether the Contact exists in a separate accounting or other system, such as Microsoft Dynamics GP or another ERP database, for use in integration processes.	
salutation	Type the salutation of the Contact to make sure the Contact is addressed correctly in sales calls, email messages, and marketing campaigns.	
jobTitle	Type the job title of the Contact to make sure the Contact is addressed correctly in sales calls, email, and marketing campaigns.	
firstName	Type the Contact's first name to make sure the Contact is addressed correctly in sales calls, email, and marketing campaigns.	
department	Type the department or business unit where the Contact works in the parent company or business.	
nickName	Type the Contact's nickname.	
middleName	Type the Contact's middle name or initial to make sure the Contact is addressed correctly.	
lastName	Type the Contact's last name to make sure the Contact is addressed correctly in sales calls, email, and marketing campaigns.	
suffix	Type the suffix used in the Contact's name, such as Jr. or Sr. to make sure the Contact is addressed correctly in sales calls, email, and marketing campaigns.	
yomiFirstName	Type the phonetic spelling of the Contact's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the Contact.	
fullName	Combines and shows the Contact's first and last names so that the full name can be displayed in views and reports.	
yomiMiddleName	Type the phonetic spelling of the Contact's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the Contact.	
yomiLastName	Type the phonetic spelling of the Contact's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the Contact.	
anniversary	Enter the date of the Contact's wedding or service anniversary for use in customer gift programs or other communications.	
birthDate	Enter the Contact's birthday for use in customer gift programs or other communications.	
governmentId	Type the passport number or other government ID for the Contact for use in documents or reports.	
yomiFullName	Shows the combined Yomi first and last names of the Contact so that the full phonetic name can be displayed in views and reports.	
description	Type additional information to describe the Contact, such as an excerpt from the company's website.	
employeeId	Type the employee ID or number for the Contact for reference in orders, service cases, or other communications with the Contact's organization.	
genderCode	Select the Contact's gender to make sure the Contact is addressed correctly in sales calls, email, and marketing campaigns.	
genderCode_display		
annualIncome	Type the Contact's annual income for use in profiling and financial analysis.	
hasChildrenCode	Select whether the Contact has any children for reference in follow-up phone calls and other communications.	
hasChildrenCode_display		
educationCode	Select the Contact's highest level of education for use in segmentation and analysis.	
educationCode_display		
webSiteUrl	Type the Contact's professional or personal website or blog URL.	
familyStatusCode	Select the marital status of the Contact for reference in follow-up phone calls and other communications.	
familyStatusCode_display		
ftpSiteUrl	Type the URL for the Contact's FTP site to enable users to access data and share documents.	
EMailAddress1	Type the primary email address for the Contact.	
spousesName	Type the name of the Contact's spouse or partner for reference during calls, events, or other communications with the Contact.	
assistantName	Type the name of the Contact's assistant.	
EMailAddress2	Type the secondary email address for the Contact.	
assistantPhone	Type the phone number for the Contact's assistant.	
EMailAddress3	Type an alternate email address for the Contact.	
doNotPhone	Select whether the Contact accepts phone calls. If Do Not Allow is selected, the Contact will be excluded from any phone call activities distributed in marketing campaigns.	
managerName	Type the name of the Contact's manager for use in escalating issues or other follow-up communications with the Contact.	
managerPhone	Type the phone number for the Contact's manager.	
doNotFax	Select whether the Contact allows faxes. If Do Not Allow is selected, the Contact will be excluded from any fax activities distributed in marketing campaigns.	
doNotEMail	Select whether the Contact allows direct email sent from Microsoft Dynamics 365. If Do Not Allow is selected, Microsoft Dynamics 365 will not send the email.	
doNotPostalMail	Select whether the Contact allows direct mail. If Do Not Allow is selected, the Contact will be excluded from letter activities distributed in marketing campaigns.	
doNotBulkEMail	Select whether the Contact accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the Contact can be added to marketing lists, but will be excluded from the email.	
doNotBulkPostalMail	Select whether the Contact accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the Contact can be added to marketing lists, but will be excluded from the letters.	
accountRoleCode	Select the Contact's role within the company or sales process, such as decision maker, employee, or influencer.	
accountRoleCode_display		
territoryCode	Select a region or territory for the Contact for use in segmentation and analysis.	
territoryCode_display		
creditLimit	Type the credit limit of the Contact for reference when you address invoice and accounting issues with the customer.	
creditOnHold	Select whether the Contact is on a credit hold, for reference when addressing invoice and accounting issues.	
numberOfChildren	Type the number of children the Contact has for reference in follow-up phone calls and other communications.	
childrensNames	Type the names of the Contact's children for reference in communications and client programs.	
mobilePhone	Type the mobile phone number for the Contact.	
pager	Type the pager number for the Contact.	
telephone1	Type the main phone number for this Contact.	
telephone2	Type a second phone number for this Contact.	
telephone3	Type a third phone number for this Contact.	
fax	Type the fax number for the Contact.	
aging30	For system use only.	
stateCode	Shows whether the Contact is active or inactive. Inactive Contacts are read-only and can't be edited unless they are reactivated.	
stateCode_display		
aging60	For system use only.	
statusCode	Select the Contact's status.	
statusCode_display		
aging90	For system use only.	
parentContactId	Unique identifier of the parent Contact.	
address1AddressId	Unique identifier for address n.	
address1AddressTypeCode	Select the address type, such as primary or billing.	
address1AddressTypeCode_display		
address1Name	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
address1PrimaryContactName	Type the name of the primary Contact person for the customer's address.	
address1Line1	Type the first line of the customer's address to help identify the location.	
address1Line2	Type the second line of the customer's address.	
address1Line3	Type the third line of the customer's address.	
address1City	Type the city for the customer's address to help identify the location.	
address1StateOrProvince	Type the state or province of the customer's address.	
address1County	Type the county for the customer's address.	
address1Country	Type the country or region for the customer's address.	
address1PostOfficeBox	Type the post office box number of the customer's address.	
address1PostalCode	Type the ZIP Code or postal code for the address.	
address1UTCOffset	Select the time zone for the address.	
address1FreightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	
address1FreightTermsCode_display		
address1UPSZone	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
address1Latitude	Type the latitude value for the customer's address, for use in mapping and other applications.	
address1Telephone1	Type the primary phone number for the customer's address.	
address1Longitude	Type the longitude value for the customer's address, for use in mapping and other applications.	
address1ShippingMethodCode	Select a shipping method for deliveries sent to this address.	
address1ShippingMethodCode_display		
address1Telephone2	Type a second phone number for the customer's address.	
address1Telephone3	Type a third phone number for the customer's address.	
address1Fax	Type the fax number associated with the customer's address.	
address1Composite	Shows the complete address.	
address2AddressId	Unique identifier for address n.	
address2AddressTypeCode	Select the address type, such as primary or billing.	
address2AddressTypeCode_display		
address2Name	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
address2PrimaryContactName	Type the name of the primary Contact person for the customer's address.	
address2Line1	Type the first line of the customer's address to help identify the location.	
address2Line2	Type the second line of the customer's address.	
address2Line3	Type the third line of the customer's address.	
address2City	Type the city for the customer's address to help identify the location.	
address2StateOrProvince	Type the state or province of the customer's address.	
address2County	Type the county for the customer's address.	
address2Country	Type the country or region for the customer's address.	
address2PostOfficeBox	Type the post office box number of the customer's address.	
address2PostalCode	Type the ZIP Code or postal code for the address.	
address2UTCOffset	Select the time zone for the address.	
address2FreightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	
address2FreightTermsCode_display		
address2UPSZone	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
address2Latitude	Type the latitude value for the customer's address, for use in mapping and other applications.	
address2Telephone1	Type the primary phone number for the customer's address.	
address2Longitude	Type the longitude value for the customer's address, for use in mapping and other applications.	
address2ShippingMethodCode	Select a shipping method for deliveries sent to this address.	
address2ShippingMethodCode_display		
address2Telephone2	Type a second phone number for the customer's address.	
address2Telephone3	Type a third phone number for the customer's address.	
address2Fax	Type the fax number associated with the customer's address.	
address2Composite	Shows the complete address.	
address3AddressId	Unique identifier for address n.	
address3AddressTypeCode	Select the address type, such as primary or billing.	
address3AddressTypeCode_display		
address3Name	Type a descriptive name for the customer's address, such as Corporate Headquarters.	
address3PrimaryContactName	Type the name of the primary Contact person for the customer's address.	
address3Line1	Type the first line of the customer's address to help identify the location.	
address3Line2	Type the second line of the customer's address.	
address3Line3	Type the third line of the customer's address.	
address3City	Type the city for the customer's address to help identify the location.	
address3StateOrProvince	Type the state or province of the customer's address.	
address3County	Type the county for the customer's address.	
address3Country	Type the country or region for the customer's address.	
address3PostOfficeBox	Type the post office box number of the customer's address.	
address3PostalCode	Type the ZIP Code or postal code for the address.	
address3UTCOffset	Select the time zone for the address.	
address3FreightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	
address3FreightTermsCode_display		
address3UPSZone	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
address3Latitude	Type the latitude value for the customer's address, for use in mapping and other applications.	
address3Telephone1	Type the primary phone number for the customer's address.	
address3Longitude	Type the longitude value for the customer's address, for use in mapping and other applications.	
address3ShippingMetho@safe class DBUSContact : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }

  /// The primary email address for the entity.
  mixin(OString!"emailAddress");	

  /// Contains the id of the process associated with the entity.	
  mixin(OUuid!"processId");

  /// Contains the id of the stage where the entity is located.
  mixin(OUuid!"stageId");

}
auto BUSContact() { return new DBUSContact; }
auto BUSContact(UUID newId, string newName) { return new DBUSContact(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSContacts {
  mixin(IEIEntitiesRest!("invoice", "invoices"));
}

@safe class DBUSContacts : IBUSContacts {
  this() {
    _entities ~= new DBUSContact(randomUUID, "hallo");
    _entities ~= new DBUSContact(randomUUID, "world");
  }

  DBUSContact[] _entities;

  DBUSContact[] all() { 
    DBUSContact[] results;  
    foreach(entity; _entities) results ~= entity;
    return results;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSContact get(string _id) { 
    DBUSContact result;

    result = _entities[0];

    return result;
  }

  DBUSContact[] versions(string _id) { 
    DBUSContact[] results;
  
    foreach(entity; _entities) results ~= entity;

    return results;
  }

  bool exists(string _id) {
    return true;
  }

	DBUSContact create(DBUSContact entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSContact update(DBUSContact entity) {
   return entity; 
  }
}dCode	Select a shipping method for deliveries sent to this address.	
address3ShippingMethodCode_display		
address3Telephone2	Type a second phone number for the customer's address.	
address3Telephone3	Type a third phone number for the customer's address.	
address3Fax	Type the fax number associated with the customer's address.	
address3Composite	Shows the complete address.	
preferredSystemUserId	Choose the regular or preferred customer service representative for reference when scheduling service activities for the Contact.	
masterId	Unique identifier of the master Contact for merge.	
preferredAppointmentDayCode	Select the preferred day of the week for service appointments.	
preferredAppointmentDayCode_display		
preferredAppointmentTimeCode	Select the preferred time of day for service appointments.	
preferredAppointmentTimeCode_display		
doNotSendMM	Select whether the Contact accepts marketing materials, such as brochures or catalogs. Contacts that opt out can be excluded from marketing initiatives.	
parentCustomerIdType	The type of parent customer, either Account or Contact.	
parentCustomerId	Select the parent account or parent Contact for the Contact to provide a quick link to additional details, such as financial information, activities, and opportunities.	
merged	Shows whether the account has been merged with a master Contact.	
externalUserIdentifier	Identifier for an external user.	
lastUsedInCampaign	Shows the date when the Contact was last included in a marketing campaign or quick campaign.	
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
annualIncomeBase	Shows the Annual Income field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
creditLimitBase	Shows the Credit Limit field converted to the system's default base currency for reporting purposes. The calculations use the exchange rate specified in the Currencies area.	
aging60Base	Shows the Aging 60 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
aging90Base	Shows the Aging 90 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
aging30Base	Shows the Aging 30 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	
stageId	Shows the ID of the stage.	
processId	Shows the ID of the process.	
entityImageId	For internal use only.	
traversedPath	For internal use only.	
SLAId	Choose the service level agreement (SLA) that you want to apply to the Contact record.	
SLAInvokedId	Last SLA that was applied to this case. This field is for internal use only.	
onHoldTime	Shows how long, in minutes, that the record was on hold.	
lastOnHoldTime	Contains the date and time stamp of the last on hold time.	
followEmail	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the Contact.	
timeSpentByMeOnEmailAndMeetings	Total time spent for emails (read and write) and meetings by me in relation to the Contact record.	
business2	Type a second business phone number for this Contact.	
callback	Type a callback phone number for this Contact.	
company	Type the company phone of the Contact.	
home2	Type a second home phone number for this Contact.	
createdByExternalParty	Shows the external party who created the record.	
modifiedByExternalParty	Shows the external party who modified the record.	
marketingOnly	Whether is only for marketing	

*/