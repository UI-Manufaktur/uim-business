module uim.business.leads.lead;

import uim.business;

@safe class DBUSLead : DBUSObject {
  mixin(EntityThis!());

  mixin(OString!"createdOnBehalfBy");	/// Unique identifier of the delegate user who created the record.	
  mixin(OString!"modifiedOnBehalfBy");	/// Unique identifier of the delegate user who modified the record.	
  mixin(OString!"overriddenCreatedOn");	/// Date and time that the record was migrated.	
  mixin(OString!"importSequenceNumber");	/// Unique identifier of the data import or data migration that created this record.	
  mixin(OString!"ownerIdType");	/// The type of owner, either User or Team.	
  mixin(OString!"ownerId");	/// Owner Id	
  mixin(OString!"owningBusinessUnit");	/// Unique identifier for the business unit that owns the record	
  mixin(OString!"owningUser");	/// Unique identifier of the user that owns the activity.	
  mixin(OString!"owningTeam");	/// Unique identifier for the team that owns the record.	
  mixin(OString!"timeZoneRuleVersionNumber");	/// For internal use only.	
  mixin(OString!"UTCConversionTimeZoneCode");	/// Time zone code that was in use when the record was created.	
  mixin(OString!"leadId");	/// Unique identifier of the lead.	
  mixin(OString!"fullName");	/// Combines and shows the lead's first and last names so the full name can be displayed in views and reports.	
  mixin(OString!"processId");	/// Contains the id of the process associated with the entity.	
  mixin(OString!"stageId");	/// Contains the id of the stage where the entity is located.	
  mixin(OString!"traversedPath");	/// A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
  mixin(OString!"parentAccountId");	/// Choose an account to connect this lead to, so that the relationship is visible in reports and analytics.	
  mixin(OString!"parentContactId");	/// Choose a contact to connect this lead to, so that the relationship is visible in reports and analytics.	
  mixin(OString!"address1AddressId");	/// Unique identifier for address 1.	
  mixin(OString!"address1AddressTypeCode");	/// Select the primary address type.	
  mixin(OString!"address1AddressTypeCode_display");	/// 	
  mixin(OString!"address1City");	/// Type the city for the primary address.	
  mixin(OString!"address1Composite");	/// Shows the complete primary address.	
  mixin(OString!"address1Country");	/// Type the country or region for the primary address.	
  mixin(OString!"address1County");	/// Type the county for the primary address.	
  mixin(OString!"address1Fax");	/// Type the fax number associated with the primary address.	
  mixin(OString!"address1Latitude");	/// Type the latitude value for the primary address for use in mapping and other applications.	
  mixin(OString!"address1Line1");	/// Type the first line of the primary address.	
  mixin(OString!"address1Line2");	/// Type the second line of the primary address.	
  mixin(OString!"address1Line3");	/// Type the third line of the primary address.	
  mixin(OString!"address1Longitude");	/// Type the longitude value for the primary address for use in mapping and other applications.	
  mixin(OString!"address1Name");	/// Type a descriptive name for the primary address, such as Corporate Headquarters.	
  mixin(OString!"address1PostalCode");	/// Type the ZIP Code or postal code for the primary address.	
  mixin(OString!"address1PostOfficeBox");	/// Type the post office box number of the primary address.	
  mixin(OString!"address1ShippingMethodCode");	/// Select a shipping method for deliveries sent to this address.	
  mixin(OString!"address1ShippingMethodCode_display");	/// 	
  mixin(OString!"address1StateOrProvince");	/// Type the state or province of the primary address.	
  mixin(OString!"address1Telephone1");	/// Type the main phone number associated with the primary address.	
  mixin(OString!"address1Telephone2");	/// Type a second phone number associated with the primary address.	
  mixin(OString!"address1Telephone3");	/// Type a third phone number associated with the primary address.	
  mixin(OString!"address1UPSZone");	/// Type the UPS zone of the primary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
  mixin(OString!"address1UTCOffset");	/// Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address.	
  mixin(OString!"address2AddressId");	/// Unique identifier for address 2.	
  mixin(OString!"address2AddressTypeCode");	/// Select the secondary address type.	
  mixin(OString!"address2AddressTypeCode_display");	/// 	
  mixin(OString!"address2City");	/// Type the city for the secondary address.	
  mixin(OString!"address2Composite");	/// Shows the complete secondary address.	
  mixin(OString!"address2Country");	/// Type the country or region for the secondary address.	
  mixin(OString!"address2County"); /// Type the county for the secondary address.	
  mixin(OString!"address2Fax"); /// Type the fax number associated with the secondary address.	
  mixin(OString!"address2Latitude"); /// Type the latitude value for the secondary address for use in mapping and other applications.	
  mixin(OString!"address2Line1"); /// Type the first line of the secondary address.	
  mixin(OString!"address2Line2"); /// Type the second line of the secondary address.	
  mixin(OString!"address2Line3"); /// Type the third line of the secondary address.	
  mixin(OString!"address2Longitude"); /// Type the longitude value for the secondary address for use in mapping and other applications.	
  mixin(OString!"address2Name"); /// Type a descriptive name for the secondary address, such as Corporate Headquarters.	
  mixin(OString!"address2PostalCode"); /// Type the ZIP Code or postal code for the secondary address.	
  mixin(OString!"address2PostOfficeBox"); /// Type the post office box number of the secondary address.	
  mixin(OString!"address2ShippingMethodCode"); /// Select a shipping method for deliveries sent to this address.	
  mixin(OString!"address2ShippingMethodCode_display"); /// 		
  mixin(OString!"address2StateOrProvince"); /// Type the state or province of the secondary address.	
  mixin(OString!"address2Telephone1"); /// Type the main phone number associated with the secondary address.	
  mixin(OString!"address2Telephone2"); /// Type a second phone number associated with the secondary address.	
  mixin(OString!"address2Telephone3"); /// Type a third phone number associated with the secondary address.	
  mixin(OString!"address2UPSZone"); /// Type the UPS zone of the secondary address to make sure shipping charges are calculated correctly and deliveries are made promptly, if shipped by UPS.	
  mixin(OString!"address2UTCOffset"); /// Select the time zone, or UTC offset, for this address so that other people can reference it when they contact someone at this address.	
  mixin(OString!"budgetAmount"); /// Information about the budget amount of the lead's company or organization.	
  mixin(OString!"transactionCurrencyId"); /// Choose the local currency for the record to make sure budgets are reported in the correct currency.	
  mixin(OString!"exchangeRate"); /// Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
  mixin(OString!"budgetAmountBase"); /// Value of the Budget Amount in base currency.	
  mixin(OString!"budgetStatus"); /// Information about the budget status of the lead's company or organization.	
  mixin(OString!"budgetStatus_display"); /// 		
  mixin(OString!"companyName"); /// Type the name of the company associated with the lead. This becomes the account name when the lead is qualified and converted to a customer account.	
  mixin(OString!"confirmInterest"); /// Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality.	
  mixin(OString!"customerIdType"); /// The type of customer, either Account or Contact.	
  mixin(OString!"customerId"); /// The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.	
  mixin(OString!"decisionMaker"); /// Select whether your notes include information about who makes the purchase decisions at the lead's company.	
  mixin(OString!"doNotBulkEMail"); /// Select whether the lead accepts bulk email sent through marketing campaigns or quick campaigns. If Do Not Allow is selected, the lead can be added to marketing lists, but will be excluded from the email.	
  mixin(OString!"doNotEMail"); /// Select whether the lead allows direct email sent from Microsoft Dynamics 365.	
  mixin(OString!"doNotFax"); /// Select whether the lead allows faxes.	
  mixin(OString!"doNotPhone"); /// Select whether the lead allows phone calls.	
  mixin(OString!"doNotPostalMail"); /// Select whether the lead allows direct mail.	
  mixin(OString!"doNotSendMM"); /// Select whether the lead accepts marketing materials, such as brochures or catalogs. Leads that opt out can be excluded from marketing initiatives.	
  mixin(OString!"EMailAddress1"); /// Type the primary email address for the lead.	
  mixin(OString!"EMailAddress2"); /// Type the secondary email address for the lead.	
  mixin(OString!"EMailAddress3"); /// Type a third email address for the lead.	
  mixin(OString!"estimatedAmount"); /// Type the estimated revenue value that this lead will generate to assist in sales forecasting and planning.	
  mixin(OString!"estimatedAmountBase"); /// Value of the Est. Value in base currency.	
  mixin(OString!"estimatedCloseDate"); /// Enter the expected close date for the lead, so that the sales team can schedule timely follow-up meetings to move the prospect to the next sales stage.	
  mixin(OString!"estimatedValue"); /// Type a numeric value of the lead's estimated value, such as a product quantity, if no revenue amount can be specified in the Est. Value field. This can be used for sales forecasting and planning.	
  mixin(OString!"evaluateFit"); /// Select whether the fit between the lead's requirements and your offerings was evaluated.	
  mixin(OString!"fax"); /// Type the fax number for the primary contact for the lead.	
  mixin(OString!"firstName"); /// Type the first name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns.	
  mixin(OString!"industryCode"); /// Select the primary industry in which the lead's business is focused, for use in marketing segmentation and demographic analysis.	
  mixin(OString!"industryCode_display"); /// 		
  mixin(OString!"initialCommunication"); /// Choose whether someone from the sales team contacted this lead earlier.	
  mixin(OString!"initialCommunication_display"); /// 		
  mixin(OString!"jobTitle"); /// Type the job title of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns.	
  mixin(OString!"lastName"); /// Type the last name of the primary contact for the lead to make sure the prospect is addressed correctly in sales calls, email, and marketing campaigns.	
  mixin(OString!"lastUsedInCampaign"); /// Shows the date when the lead was last included in a marketing campaign or quick campaign.	
  mixin(OString!"leadQualityCode"); /// Select a rating value to indicate the lead's potential to become a customer.	
  mixin(OString!"leadQualityCode_display"); /// 		
  mixin(OString!"leadSourceCode"); /// Select the primary marketing source that prompted the lead to contact you.	
  mixin(OString!"leadSourceCode_display"); /// 		
  mixin(OString!"masterId"); /// Unique identifier of the master lead for merge.	
  mixin(OString!"merged"); /// Tells whether the lead has been merged with another lead.	
  mixin(OString!"middleName"); /// Type the middle name or initial of the primary contact for the lead to make sure the prospect is addressed correctly.	
  mixin(OString!"mobilePhone"); /// Type the mobile phone number for the primary contact for the lead.	
  mixin(OString!"need"); /// Choose how high the level of need is for the lead's company.	
  mixin(OString!"need_display"); /// 		
  mixin(OString!"numberOfEmployees"); /// Type the number of employees that work at the company associated with the lead, for use in marketing segmentation and demographic analysis.	
  mixin(OString!"pager"); /// Type the pager number for the primary contact for the lead.	
  mixin(OString!"participatesInWorkflow"); /// Shows whether the lead participates in workflow rules.	
  mixin(OString!"preferredContactMethodCode"); /// Select the preferred method of contact.	
  mixin(OString!"preferredContactMethodCode_display"); /// 		
  mixin(OString!"priorityCode"); /// Select the priority so that preferred customers or critical issues are handled quickly.	
  mixin(OString!"priorityCode_display"); /// 		
  mixin(OString!"purchaseProcess"); /// Choose whether an individual or a committee will be involved in the purchase process for the lead.	
  mixin(OString!"purchaseProcess_display"); /// 		
  mixin(OString!"qualificationComments"); /// Type comments about the qualification or scoring of the lead.	
  mixin(OString!"revenue"); /// Type the annual revenue of the company associated with the lead to provide an understanding of the prospect's business.	
  mixin(OString!"revenueBase"); /// Value of the Annual Revenue in base currency.	
  mixin(OString!"salesStage"); /// Select the sales stage of this lead to aid the sales team in their efforts to convert this lead to an opportunity.	
  mixin(OString!"salesStage_display"); /// 		
  mixin(OString!"salesStageCode"); /// Select the sales process stage for the lead to help determine the probability of the lead converting to an opportunity.	
  mixin(OString!"salesStageCode_display"); /// 		
  mixin(OString!"salutation"); /// Type the salutation of the primary contact for this lead to make sure the prospect is addressed correctly in sales calls, email messages, and marketing campaigns.	
  mixin(OString!"scheduleFollowupProspect"); /// Enter the date and time of the prospecting follow-up meeting with the lead.	
  mixin(OString!"scheduleFollowUpQualify"); /// Enter the date and time of the qualifying follow-up meeting with the lead.	
  mixin(OString!"SIC"); /// Type the Standard Industrial Classification (SIC) code that indicates the lead's primary industry of business for use in marketing segmentation and demographic analysis.	
  mixin(OString!"stateCode"); /// Shows whether the lead is open, qualified, or disqualified. Qualified and disqualified leads are read-only and can't be edited unless they are reactivated.	
  mixin(OString!"stateCode_display"); /// 		
  mixin(OString!"statusCode"); /// Select the lead's status.	
  mixin(OString!"statusCode_display"); /// 		
  mixin(OString!"subject"); /// Type a subject or descriptive name, such as the expected order, company name, or marketing source list, to identify the lead.	
  mixin(OString!"telephone1"); /// Type the work phone number for the primary contact for the lead.	
  mixin(OString!"telephone2"); /// Type the home phone number for the primary contact for the lead.	
  mixin(OString!"telephone3"); /// Type an alternate phone number for the primary contact for the lead.	
  mixin(OString!"purchaseTimeFrame"); /// Choose how long the lead will likely take to make the purchase, so the sales team will be aware.	
  mixin(OString!"purchaseTimeFrame_display"); /// 		
  mixin(OString!"webSiteUrl"); /// Type the website URL for the company associated with this lead.	
  mixin(OString!"SLAId"); /// Choose the service level agreement (SLA) that you want to apply to the Lead record.	
  mixin(OString!"SLAInvokedId"); /// Last SLA that was applied to this case. This field is for internal use only.	
  mixin(OString!"onHoldTime"); /// Shows how long, in minutes, that the record was on hold.	
  mixin(OString!"lastOnHoldTime"); /// Contains the date and time stamp of the last on hold time.	
  mixin(OString!"followEmail"); /// Information about whether to allow following email activity like opens, attachment views and link clicks for emails sent to the lead.	
  mixin(OString!"timeSpentByMeOnEmailAndMeetings"); /// Total time spent for emails (read and write) and meetings by me in relation to the lead record.	
  mixin(OString!"entityImageId"); /// 		
  mixin(OString!"accountId"); /// Unique identifier of the account with which the lead is associated.	
  mixin(OString!"contactId"); /// Unique identifier of the contact with which the lead is associated.	
  mixin(OString!"yomiCompanyName"); /// Type the phonetic spelling of the lead's company name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect.	
  mixin(OString!"yomiFirstName"); /// Type the phonetic spelling of the lead's first name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect.	
  mixin(OString!"yomiFullName"); /// Combines and shows the lead's Yomi first and last names so the full phonetic name can be displayed in views and reports.	
  mixin(OString!"yomiLastName"); /// Type the phonetic spelling of the lead's last name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect.	
  mixin(OString!"yomiMiddleName"); /// Type the phonetic spelling of the lead's middle name, if the name is specified in Japanese, to make sure the name is pronounced correctly in phone calls with the prospect.	
  mixin(OString!"campaignId"); /// Choose the campaign that the lead was generated from to track the effectiveness of marketing campaigns and identify communications received by the lead.	
  mixin(OString!"relatedObjectId"); /// Related Campaign Response.	
  mixin(OString!"originatingCaseId"); /// This attribute is used for Sample Service Business Processes.	
  mixin(OString!"qualifyingOpportunityId"); /// Choose the opportunity that the lead was qualified on and then converted to.	
}
auto BUSLead() { return new DBUSLead; }
auto BUSLead(UUID newId, string newName) { return new DBUSLead(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSLeads {
  mixin(IEIEntitiesRest!("Lead", "Leads"));
}

@safe class DBUSLeads : IBUSLeads {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Lead", "Leads"));
  mixin(OEntitiesRest!("Lead", "Leads"));
}
