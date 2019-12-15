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

@path("/api/demo/")
interface IBUSContacts {
  mixin(IEntitiesFragment!("contact", "contacts"));
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
}
/*
Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	applicationCommon/Contact
createdBy	Unique identifier of the user who created the record.	applicationCommon/Contact
modifiedOn	Date and time when the record was modified.	applicationCommon/Contact
modifiedBy	Unique identifier of the user who modified the record.	applicationCommon/Contact
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	applicationCommon/Contact
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	applicationCommon/Contact
overriddenCreatedOn	Date and time that the record was migrated.	applicationCommon/Contact
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	applicationCommon/Contact
ownerIdType		applicationCommon/Contact
ownerId		applicationCommon/Contact
owningBusinessUnit	Unique identifier for the business unit that owns the record	applicationCommon/Contact
owningUser	Unique identifier of the user that owns the activity.	applicationCommon/Contact
owningTeam	Unique identifier for the team that owns the record.	applicationCommon/Contact
timeZoneRuleVersionNumber	For internal use only.	applicationCommon/Contact
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	applicationCommon/Contact
versionNumber	Version Number	applicationCommon/Contact
contactId	Unique identifier of the contact.	applicationCommon/Contact
customerSizeCode	Select the size of the contact's company for segmentation and reporting purposes.	applicationCommon/Contact
customerSizeCode_display		applicationCommon/Contact
customerTypeCode	Select the category that best describes the relationship between the contact and your organization.	applicationCommon/Contact
customerTypeCode_display		applicationCommon/Contact
preferredContactMethodCode	Select the preferred method of contact.	applicationCommon/Contact
preferredContactMethodCode_display		applicationCommon/Contact
leadSourceCode	Select the primary marketing source that directed the contact to your organization.	applicationCommon/Contact
leadSourceCode_display		applicationCommon/Contact
paymentTermsCode	Select the payment terms to indicate when the customer needs to pay the total amount.	applicationCommon/Contact
paymentTermsCode_display		applicationCommon/Contact
shippingMethodCode	Select a shipping method for deliveries sent to this address.	applicationCommon/Contact
shippingMethodCode_display		applicationCommon/Contact
accountId	Unique identifier of the account with which the contact is associated.	applicationCommon/Contact
participatesInWorkflow	Shows whether the contact participates in workflow rules.	applicationCommon/Contact
isBackofficeCustomer	Select whether the contact exists in a separate accounting or other system, such as Microsoft Dynamics GP or another ERP database, for use in integration processes.	applicationCommon/Contact
salutation	Type the salutation of the contact to make sure the contact is addressed correctly in sales calls, email messages, and marketing campaigns.	applicationCommon/Contact
jobTitle	Type the job title of the contact to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	applicationCommon/Contact
firstName	Type the contact's first name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	applicationCommon/Contact
department	Type the department or business unit where the contact works in the parent company or business.	applicationCommon/Contact
nickName	Type the contact's nickname.	applicationCommon/Contact
middleName	Type the contact's middle name or initial to make sure the contact is addressed correctly.	applicationCommon/Contact
lastName	Type the contact's last name to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	applicationCommon/Contact
suffix	Type the suffix used in the contact's name, such as Jr. or Sr. to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	applicationCommon/Contact
yomiFirstName	Type the phonetic spelling of the contact's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	applicationCommon/Contact
fullName	Combines and shows the contact's first and last names so that the full name can be displayed in views and reports.	applicationCommon/Contact
yomiMiddleName	Type the phonetic spelling of the contact's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	applicationCommon/Contact
yomiLastName	Type the phonetic spelling of the contact's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the contact.	applicationCommon/Contact
anniversary	Enter the date of the contact's wedding or service anniversary for use in customer gift programs or other communications.	applicationCommon/Contact
birthDate	Enter the contact's birthday for use in customer gift programs or other communications.	applicationCommon/Contact
governmentId	Type the passport number or other government ID for the contact for use in documents or reports.	applicationCommon/Contact
yomiFullName	Shows the combined Yomi first and last names of the contact so that the full phonetic name can be displayed in views and reports.	applicationCommon/Contact
description	Type additional information to describe the contact, such as an excerpt from the company's website.	applicationCommon/Contact
employeeId	Type the employee ID or number for the contact for reference in orders, service cases, or other communications with the contact's organization.	applicationCommon/Contact
genderCode	Select the contact's gender to make sure the contact is addressed correctly in sales calls, email, and marketing campaigns.	applicationCommon/Contact
genderCode_display		applicationCommon/Contact
annualIncome	Type the contact's annual income for use in profiling and financial analysis.	applicationCommon/Contact
hasChildrenCode	Select whether the contact has any children for reference in follow-up phone calls and other communications.	applicationCommon/Contact
hasChildrenCode_display		applicationCommon/Contact
educationCode	Select the contact's highest level of education for use in segmentation and analysis.	applicationCommon/Contact
educationCode_display		applicationCommon/Contact
webSiteUrl	Type the contact's professional or personal website or blog URL.	applicationCommon/Contact
familyStatusCode	Select the marital status of the contact for reference in follow-up phone calls and other communications.	applicationCommon/Contact
familyStatusCode_display		applicationCommon/Contact
ftpSiteUrl	Type the URL for the contact's FTP site to enable users to access data and share documents.	applicationCommon/Contact
EMailAddress1	Type the primary email address for the contact.	applicationCommon/Contact
spousesName	Type the name of the contact's spouse or partner for reference during calls, events, or other communications with the contact.	applicationCommon/Contact
assistantName	Type the name of the contact's assistant.	applicationCommon/Contact
EMailAddress2	Type the secondary email address for the contact.	applicationCommon/Contact
assistantPhone	Type the phone number for the contact's assistant.	applicationCommon/Contact
EMailAddress3	Type an alternate email address for the contact.	applicationCommon/Contact
doNotPhone	Select whether the contact accepts phone calls. If Do Not Allow is selected, the contact will be excluded from any phone call activities distributed in marketing campaigns.	applicationCommon/Contact
managerName	Type the name of the contact's manager for use in escalating issues or other follow-up communications with the contact.	applicationCommon/Contact
managerPhone	Type the phone number for the contact's manager.	applicationCommon/Contact
doNotFax	Select whether the contact allows faxes. If Do Not Allow is selected, the contact will be excluded from any fax activities distributed in marketing campaigns.	applicationCommon/Contact
doNotEMail	Select whether the contact allows direct email sent from Microsoft Dynamics 365. If Do Not Allow is selected, Microsoft Dynamics 365 will not send the email.	applicationCommon/Contact
doNotPostalMail	Select whether the contact allows direct mail. If Do Not Allow is selected, the contact will be excluded from letter activities distributed in marketing campaigns.	applicationCommon/Contact
doNotBulkEMail	Select whether the contact accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the email.	applicationCommon/Contact
doNotBulkPostalMail	Select whether the contact accepts bulk postal mail sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the contact can be added to marketing lists, but will be excluded from the letters.	applicationCommon/Contact
accountRoleCode	Select the contact's role within the company or sales process, such as decision maker, employee, or influencer.	applicationCommon/Contact
accountRoleCode_display		applicationCommon/Contact
territoryCode	Select a region or territory for the contact for use in segmentation and analysis.	applicationCommon/Contact
territoryCode_display		applicationCommon/Contact
creditLimit	Type the credit limit of the contact for reference when you address invoice and accounting issues with the customer.	applicationCommon/Contact
creditOnHold	Select whether the contact is on a credit hold, for reference when addressing invoice and accounting issues.	applicationCommon/Contact
numberOfChildren	Type the number of children the contact has for reference in follow-up phone calls and other communications.	applicationCommon/Contact
childrensNames	Type the names of the contact's children for reference in communications and client programs.	applicationCommon/Contact
mobilePhone	Type the mobile phone number for the contact.	applicationCommon/Contact
pager	Type the pager number for the contact.	applicationCommon/Contact
telephone1	Type the main phone number for this contact.	applicationCommon/Contact
telephone2	Type a second phone number for this contact.	applicationCommon/Contact
telephone3	Type a third phone number for this contact.	applicationCommon/Contact
fax	Type the fax number for the contact.	applicationCommon/Contact
aging30	For system use only.	applicationCommon/Contact
stateCode	Shows whether the contact is active or inactive. Inactive contacts are read-only and can't be edited unless they are reactivated.	applicationCommon/Contact
stateCode_display		applicationCommon/Contact
aging60	For system use only.	applicationCommon/Contact
statusCode	Select the contact's status.	applicationCommon/Contact
statusCode_display		applicationCommon/Contact
aging90	For system use only.	applicationCommon/Contact
parentContactId	Unique identifier of the parent contact.	applicationCommon/Contact
address1AddressId	Unique identifier for address n.	applicationCommon/Contact
address1AddressTypeCode	Select the address type, such as primary or billing.	applicationCommon/Contact
address1AddressTypeCode_display		applicationCommon/Contact
address1Name	Type a descriptive name for the customer's address, such as Corporate Headquarters.	applicationCommon/Contact
address1PrimaryContactName	Type the name of the primary contact person for the customer's address.	applicationCommon/Contact
address1Line1	Type the first line of the customer's address to help identify the location.	applicationCommon/Contact
address1Line2	Type the second line of the customer's address.	applicationCommon/Contact
address1Line3	Type the third line of the customer's address.	applicationCommon/Contact
address1City	Type the city for the customer's address to help identify the location.	applicationCommon/Contact
address1StateOrProvince	Type the state or province of the customer's address.	applicationCommon/Contact
address1County	Type the county for the customer's address.	applicationCommon/Contact
address1Country	Type the country or region for the customer's address.	applicationCommon/Contact
address1PostOfficeBox	Type the post office box number of the customer's address.	applicationCommon/Contact
address1PostalCode	Type the ZIP Code or postal code for the address.	applicationCommon/Contact
address1UTCOffset	Select the time zone for the address.	applicationCommon/Contact
address1FreightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	applicationCommon/Contact
address1FreightTermsCode_display		applicationCommon/Contact
address1UPSZone	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	applicationCommon/Contact
address1Latitude	Type the latitude value for the customer's address, for use in mapping and other applications.	applicationCommon/Contact
address1Telephone1	Type the primary phone number for the customer's address.	applicationCommon/Contact
address1Longitude	Type the longitude value for the customer's address, for use in mapping and other applications.	applicationCommon/Contact
address1ShippingMethodCode	Select a shipping method for deliveries sent to this address.	applicationCommon/Contact
address1ShippingMethodCode_display		applicationCommon/Contact
address1Telephone2	Type a second phone number for the customer's address.	applicationCommon/Contact
address1Telephone3	Type a third phone number for the customer's address.	applicationCommon/Contact
address1Fax	Type the fax number associated with the customer's address.	applicationCommon/Contact
address1Composite	Shows the complete address.	applicationCommon/Contact
address2AddressId	Unique identifier for address n.	applicationCommon/Contact
address2AddressTypeCode	Select the address type, such as primary or billing.	applicationCommon/Contact
address2AddressTypeCode_display		applicationCommon/Contact
address2Name	Type a descriptive name for the customer's address, such as Corporate Headquarters.	applicationCommon/Contact
address2PrimaryContactName	Type the name of the primary contact person for the customer's address.	applicationCommon/Contact
address2Line1	Type the first line of the customer's address to help identify the location.	applicationCommon/Contact
address2Line2	Type the second line of the customer's address.	applicationCommon/Contact
address2Line3	Type the third line of the customer's address.	applicationCommon/Contact
address2City	Type the city for the customer's address to help identify the location.	applicationCommon/Contact
address2StateOrProvince	Type the state or province of the customer's address.	applicationCommon/Contact
address2County	Type the county for the customer's address.	applicationCommon/Contact
address2Country	Type the country or region for the customer's address.	applicationCommon/Contact
address2PostOfficeBox	Type the post office box number of the customer's address.	applicationCommon/Contact
address2PostalCode	Type the ZIP Code or postal code for the address.	applicationCommon/Contact
address2UTCOffset	Select the time zone for the address.	applicationCommon/Contact
address2FreightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	applicationCommon/Contact
address2FreightTermsCode_display		applicationCommon/Contact
address2UPSZone	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	applicationCommon/Contact
address2Latitude	Type the latitude value for the customer's address, for use in mapping and other applications.	applicationCommon/Contact
address2Telephone1	Type the primary phone number for the customer's address.	applicationCommon/Contact
address2Longitude	Type the longitude value for the customer's address, for use in mapping and other applications.	applicationCommon/Contact
address2ShippingMethodCode	Select a shipping method for deliveries sent to this address.	applicationCommon/Contact
address2ShippingMethodCode_display		applicationCommon/Contact
address2Telephone2	Type a second phone number for the customer's address.	applicationCommon/Contact
address2Telephone3	Type a third phone number for the customer's address.	applicationCommon/Contact
address2Fax	Type the fax number associated with the customer's address.	applicationCommon/Contact
address2Composite	Shows the complete address.	applicationCommon/Contact
address3AddressId	Unique identifier for address n.	applicationCommon/Contact
address3AddressTypeCode	Select the address type, such as primary or billing.	applicationCommon/Contact
address3AddressTypeCode_display		applicationCommon/Contact
address3Name	Type a descriptive name for the customer's address, such as Corporate Headquarters.	applicationCommon/Contact
address3PrimaryContactName	Type the name of the primary contact person for the customer's address.	applicationCommon/Contact
address3Line1	Type the first line of the customer's address to help identify the location.	applicationCommon/Contact
address3Line2	Type the second line of the customer's address.	applicationCommon/Contact
address3Line3	Type the third line of the customer's address.	applicationCommon/Contact
address3City	Type the city for the customer's address to help identify the location.	applicationCommon/Contact
address3StateOrProvince	Type the state or province of the customer's address.	applicationCommon/Contact
address3County	Type the county for the customer's address.	applicationCommon/Contact
address3Country	Type the country or region for the customer's address.	applicationCommon/Contact
address3PostOfficeBox	Type the post office box number of the customer's address.	applicationCommon/Contact
address3PostalCode	Type the ZIP Code or postal code for the address.	applicationCommon/Contact
address3UTCOffset	Select the time zone for the address.	applicationCommon/Contact
address3FreightTermsCode	Select the freight terms to make sure shipping charges are processed correctly.	applicationCommon/Contact
address3FreightTermsCode_display		applicationCommon/Contact
address3UPSZone	Type the UPS zone of the customer's address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	applicationCommon/Contact
address3Latitude	Type the latitude value for the customer's address, for use in mapping and other applications.	applicationCommon/Contact
address3Telephone1	Type the primary phone number for the customer's address.	applicationCommon/Contact
address3Longitude	Type the longitude value for the customer's address, for use in mapping and other applications.	applicationCommon/Contact
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

@path("/api/demo/")
interface IBUSContacts {
  mixin(IEntitiesFragment!("invoice", "invoices"));
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
}dCode	Select a shipping method for deliveries sent to this address.	applicationCommon/Contact
address3ShippingMethodCode_display		applicationCommon/Contact
address3Telephone2	Type a second phone number for the customer's address.	applicationCommon/Contact
address3Telephone3	Type a third phone number for the customer's address.	applicationCommon/Contact
address3Fax	Type the fax number associated with the customer's address.	applicationCommon/Contact
address3Composite	Shows the complete address.	applicationCommon/Contact
preferredSystemUserId	Choose the regular or preferred customer service representative for reference when scheduling service activities for the contact.	applicationCommon/Contact
masterId	Unique identifier of the master contact for merge.	applicationCommon/Contact
preferredAppointmentDayCode	Select the preferred day of the week for service appointments.	applicationCommon/Contact
preferredAppointmentDayCode_display		applicationCommon/Contact
preferredAppointmentTimeCode	Select the preferred time of day for service appointments.	applicationCommon/Contact
preferredAppointmentTimeCode_display		applicationCommon/Contact
doNotSendMM	Select whether the contact accepts marketing materials, such as brochures or catalogs. Contacts that opt out can be excluded from marketing initiatives.	applicationCommon/Contact
parentCustomerIdType	The type of parent customer, either Account or Contact.	applicationCommon/Contact
parentCustomerId	Select the parent account or parent contact for the contact to provide a quick link to additional details, such as financial information, activities, and opportunities.	applicationCommon/Contact
merged	Shows whether the account has been merged with a master contact.	applicationCommon/Contact
externalUserIdentifier	Identifier for an external user.	applicationCommon/Contact
lastUsedInCampaign	Shows the date when the contact was last included in a marketing campaign or quick campaign.	applicationCommon/Contact
transactionCurrencyId	Choose the local currency for the record to make sure budgets are reported in the correct currency.	applicationCommon/Contact
exchangeRate	Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	applicationCommon/Contact
annualIncomeBase	Shows the Annual Income field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	applicationCommon/Contact
creditLimitBase	Shows the Credit Limit field converted to the system's default base currency for reporting purposes. The calculations use the exchange rate specified in the Currencies area.	applicationCommon/Contact
aging60Base	Shows the Aging 60 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	applicationCommon/Contact
aging90Base	Shows the Aging 90 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	applicationCommon/Contact
aging30Base	Shows the Aging 30 field converted to the system's default base currency. The calculations use the exchange rate specified in the Currencies area.	applicationCommon/Contact
stageId	Shows the ID of the stage.	applicationCommon/Contact
processId	Shows the ID of the process.	applicationCommon/Contact
entityImageId	For internal use only.	applicationCommon/Contact
traversedPath	For internal use only.	applicationCommon/Contact
SLAId	Choose the service level agreement (SLA) that you want to apply to the Contact record.	applicationCommon/Contact
SLAInvokedId	Last SLA that was applied to this case. This field is for internal use only.	applicationCommon/Contact
onHoldTime	Shows how long, in minutes, that the record was on hold.	applicationCommon/Contact
lastOnHoldTime	Contains the date and time stamp of the last on hold time.	applicationCommon/Contact
followEmail	Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the contact.	applicationCommon/Contact
timeSpentByMeOnEmailAndMeetings	Total time spent for emails (read and write) and meetings by me in relation to the contact record.	applicationCommon/Contact
business2	Type a second business phone number for this contact.	applicationCommon/Contact
callback	Type a callback phone number for this contact.	applicationCommon/Contact
company	Type the company phone of the contact.	applicationCommon/Contact
home2	Type a second home phone number for this contact.	applicationCommon/Contact
createdByExternalParty	Shows the external party who created the record.	applicationCommon/Contact
modifiedByExternalParty	Shows the external party who modified the record.	applicationCommon/Contact
marketingOnly	Whether is only for marketing	applicationCommon/Contact

*/