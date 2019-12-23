module uim.business.opportunities.opportunity;

import uim.business;

@safe class DBUSOpportunity : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }

///	Unique identifier of the delegate user who created the record.	
mixin(OString!"createdOnBehalfBy"); 
///Unique identifier of the delegate user who modified the record.	
mixin(OString!"modifiedOnBehalfBy"); 
///Date and time that the record was migrated.	
mixin(OString!"overriddenCreatedOn"); 
///Unique identifier of the data import or data migration that created this record.	
mixin(OString!"importSequenceNumber"); 
///The type of owner, either User or Team.	
mixin(OString!"ownerIdType"); 
///Owner Id	
mixin(OString!"ownerId"); 
///Unique identifier for the business unit that owns the record	
mixin(OString!"owningBusinessUnit"); 
///Unique identifier of the user that owns the activity.	
mixin(OString!"owningUser"); 
///Unique identifier for the team that owns the record.	
mixin(OString!"owningTeam"); 
///For internal use only.	
mixin(OString!"timeZoneRuleVersionNumber"); 
///Time zone code that was in use when the record was created.	
mixin(OString!"UTCConversionTimeZoneCode"); 
///Unique identifier of the opportunity.	
mixin(OString!"opportunityId"); 
auto opportunity() { if (_store) return _store.opportunities(_opportunityId); return null; }

///The primary email address for the entity.	
mixin(OString!"emailAddress"); 
///Contains the id of the process associated with the entity.	
mixin(OString!"processId"); 
///Contains the id of the stage where the entity is located.	
mixin(OString!"stageId"); 
///A comma separated list of string values representing the unique identifiers of stages in a Business Process Flow Instance in the order that they occur.	
mixin(OString!"traversedPath"); 
///Shows the date and time when the opportunity was closed or canceled.	
mixin(OString!"actualCloseDate"); 
///Type the actual revenue amount for the opportunity for reporting and analysis of estimated versus actual sales. Field defaults to the Est. Revenue value when an opportunity is won.	
mixin(OString!"actualValue"); 
///Choose the local currency for the record to make sure budgets are reported in the correct currency.	
mixin(OString!"transactionCurrencyId"); 
///Shows the conversion rate of the record's currency. The exchange rate is used to convert all money fields in the record from the local currency to the system's default currency.	
mixin(OString!"exchangeRate"); 
///Value of the Actual Revenue in base currency.	
mixin(OString!"actualValueBase"); 
///Type a value between 0 and 1,000,000,000,000 to indicate the lead's potential available budget.	
mixin(OString!"budgetAmount"); 
///Value of the Budget Amount in base currency.	
mixin(OString!"budgetAmountBase"); 
///Select the likely budget status for the lead's company. This may help determine the lead rating or your sales approach.	
mixin(OString!"budgetStatus"); 
mixin(OString!"budgetStatus_display"); ///		
///Type a number from 0 to 100 that represents the likelihood of closing the opportunity. This can aid the sales team in their efforts to convert the opportunity in a sale.	
mixin(OString!"closeProbability"); 
///Select whether an internal review has been completed for this opportunity.	
mixin(OString!"completeInternalReview"); 
///Select whether the lead confirmed interest in your offerings. This helps in determining the lead quality and the probability of it turning into an opportunity.	
mixin(OString!"confirmInterest"); 
///Type notes about the company or organization associated with the opportunity.	
mixin(OString!"currentSituation"); 
///The type of customer, either Account or Contact.	
mixin(OString!"customerIdType"); 
///The customer account or contact to provide a quick link to additional customer details, such as account information, activities, and opportunities.	
mixin(OString!"customerId"); 
///Type some notes about the customer's requirements, to help the sales team identify products and services that could meet their requirements.	
mixin(OString!"customerNeed"); 
///Type notes about the customer's pain points to help the sales team identify products and services that could address these pain points.	
mixin(OString!"customerPainPoints"); 
///Select whether your notes include information about who makes the purchase decisions at the lead's company.	
mixin(OString!"decisionMaker"); 
///Select whether a proposal has been developed for the opportunity.	
mixin(OString!"developProposal"); 
///Type the discount amount for the opportunity if the customer is eligible for special savings.	
mixin(OString!"discountAmount"); 
///Value of the Opportunity Discount Amount in base currency.	
mixin(OString!"discountAmountBase"); 
///Type the discount rate that should be applied to the Product Totals field to include additional savings for the customer in the opportunity.	
mixin(OString!"discountPercentage"); 
///Enter the expected closing date of the opportunity to help make accurate revenue forecasts.	
mixin(OString!"estimatedCloseDate"); 
///Type the estimated revenue amount to indicate the potential sale or value of the opportunity for revenue forecasting. This field can be either system-populated or editable based on the selection in the Revenue field.	
mixin(OString!"estimatedValue"); 
///Value of the Est. Revenue in base currency.	
mixin(OString!"estimatedValueBase"); 
///Select whether the fit between the lead's requirements and your offerings was evaluated.	
mixin(OString!"evaluateFit"); 
///Choose whether the proposal feedback has been captured and resolved for the opportunity.	
mixin(OString!"resolveFeedback"); 
///Choose whether the sales team has recorded detailed notes on the proposals and the account's responses.	
mixin(OString!"fileDebrief"); 
///Select whether a final proposal has been completed for the opportunity.	
mixin(OString!"completeFinalProposal"); 
///Enter the date and time when the final decision of the opportunity was made.	
mixin(OString!"finalDecisionDate"); 
///Type the cost of freight or shipping for the products included in the opportunity for use in calculating the Total Amount field.	
mixin(OString!"freightAmount"); 
///Value of the Freight Amount in base currency.	
mixin(OString!"freightAmountBase"); 
///Choose whether someone from the sales team contacted this lead earlier.	
mixin(OString!"initialCommunication"); 
mixin(OString!"initialCommunication_display"); ///		
///Select whether the estimated revenue for the opportunity is calculated automatically based on the products entered or entered manually by a user.	
mixin(OString!"isRevenueSystemCalculated"); 
///Choose how high the level of need is for the lead's company.	
mixin(OString!"need"); 
mixin(OString!"need_display"); ///		
///Select the expected value or priority of the opportunity based on revenue, customer status, or closing probability.	
mixin(OString!"opportunityRatingCode"); 
mixin(OString!"opportunityRatingCode_display"); ///		
///Choose an account to connect this opportunity to, so that the relationship is visible in reports and analytics, and to provide a quick link to additional details, such as financial information and activities.	
mixin(OString!"parentAccountId"); 
///Choose a contact to connect this opportunity to, so that the relationship is visible in reports and analytics.	
mixin(OString!"parentContactId"); 
///Information about whether the opportunity participates in workflow rules.	
mixin(OString!"participatesInWorkflow"); 
///Choose the price list associated with this record to make sure the products associated with the campaign are offered at the correct prices.	
mixin(OString!"priceLevelId"); 
///Pricing error for the opportunity.	
mixin(OString!"pricingErrorCode"); 
mixin(OString!"pricingErrorCode_display"); ///		
///Select the priority so that preferred customers or critical issues are handled quickly.	
mixin(OString!"priorityCode"); 
mixin(OString!"priorityCode_display"); ///		
///Choose whether an individual or a committee will be involved in the purchase process for the lead.	
mixin(OString!"purchaseProcess"); 
mixin(OString!"purchaseProcess_display"); ///		
///Choose how long the lead will likely take to make the purchase.	
mixin(OString!"purchaseTimeFrame"); 
mixin(OString!"purchaseTimeFrame_display"); ///		
///Select the sales stage of this opportunity to aid the sales team in their efforts to win this opportunity.	
mixin(OString!"salesStage"); 
mixin(OString!"salesStage_display"); ///		
///Select the sales process stage for the opportunity to indicate the probability of closing the opportunity.	
mixin(OString!"salesStageCode"); 
mixin(OString!"salesStageCode_display"); ///		
///Select whether a proposal for the opportunity has been presented to the account.	
mixin(OString!"presentProposal"); 
///Choose whether the proposal feedback has been captured for the opportunity.	
mixin(OString!"captureProposalFeedback"); 
///Type notes about the proposed solution for the opportunity.	
mixin(OString!"proposedSolution"); 
///Select whether the decision about pursuing the opportunity has been made.	
mixin(OString!"pursuitDecision"); 
///Type comments about the qualification or scoring of the lead.	
mixin(OString!"qualificationComments"); 
///Type comments about the quotes associated with the opportunity.	
mixin(OString!"quoteComments"); 
///Select whether a thank you note has been sent to the account for considering the proposal.	
mixin(OString!"sendThankYouNote"); 
///Enter the date and time of the prospecting follow-up meeting with the lead.	
mixin(OString!"scheduleFollowupProspect"); 
///Enter the date and time of the qualifying follow-up meeting with the lead.	
mixin(OString!"scheduleFollowUpQualify"); 
///Enter the date and time of the proposal meeting for the opportunity.	
mixin(OString!"scheduleProposalMeeting"); 
///Shows whether the opportunity is open, won, or lost. Won and lost opportunities are read-only and can't be edited until they are reactivated.	
mixin(OString!"stateCode"); 
mixin(OString!"stateCode_display"); ///		
///Select the opportunity's status.	
mixin(OString!"statusCode"); 
mixin(OString!"statusCode_display"); ///		
///Shows the ID of the workflow step.	
mixin(OString!"stepId"); 
///Shows the current phase in the sales pipeline for the opportunity. This is updated by a workflow.	
mixin(OString!"stepName"); 
///Select when the opportunity is likely to be closed.	
mixin(OString!"timeLine"); 
mixin(OString!"timeLine_display"); ///		
///Shows the total amount due, calculated as the sum of the products, discounts, freight, and taxes for the opportunity.	
mixin(OString!"totalAmount"); 
///Value of the Total Amount in base currency.	
mixin(OString!"totalAmountBase"); 
///Shows the total product amount for the opportunity, minus any discounts. This value is added to freight and tax amounts in the calculation for the total amount of the opportunity.	
mixin(OString!"totalAmountLessFreight"); 
///Value of the Total Pre-Freight Amount in base currency.	
mixin(OString!"totalAmountLessFreightBase"); 
///Shows the total discount amount, based on the discount price and rate entered on the opportunity.	
mixin(OString!"totalDiscountAmount"); 
///Value of the Total Discount Amount in base currency.	
mixin(OString!"totalDiscountAmountBase"); 
///Shows the sum of all existing and write-in products included on the opportunity, based on the specified price list and quantities.	
mixin(OString!"totalLineItemAmount"); 
///Value of the Total Detail Amount in base currency.	
mixin(OString!"totalLineItemAmountBase"); 
///Shows the total of the Manual Discount amounts specified on all products included in the opportunity. This value is reflected in the Total Detail Amount field on the opportunity and is added to any discount amount or rate specified on the opportunity.	
mixin(OString!"totalLineItemDiscountAmount"); 
///Value of the Total Line Item Discount Amount in base currency.	
mixin(OString!"totalLineItemDiscountAmountBase"); 
///Shows the total of the Tax amounts specified on all products included in the opportunity, included in the Total Amount field calculation for the opportunity.	
mixin(OString!"totalTax"); 
///Value of the Total Tax in base currency.	
mixin(OString!"totalTaxBase"); 
///Select whether the customer contacts for this opportunity have been identified.	
mixin(OString!"identifyCustomerContacts"); 
///Select whether information about competitors is included.	
mixin(OString!"identifyCompetitors"); 
///Choose whether you have recorded who will pursue the opportunity.	
mixin(OString!"identifyPursuitTeam"); 
///Select whether the final proposal has been presented to the account.	
mixin(OString!"presentFinalProposal"); 
///Shows the duration in minutes for which the opportunity was on hold.	
mixin(OString!"onHoldTime"); 
///Contains the date time stamp of the last on hold time.	
mixin(OString!"lastOnHoldTime"); 
///Choose the service level agreement (SLA) that you want to apply to the opportunity record.	
mixin(OString!"SLAId"); 
///Last SLA that was applied to this opportunity. This field is for internal use only.	
mixin(OString!"SLAInvokedId"); 
///Total time spent for emails (read and write) and meetings by me in relation to the opportunity record.	
mixin(OString!"timeSpentByMeOnEmailAndMeetings"); 
///Choose the lead that the opportunity was created from for reporting and analytics. The field is read-only after the opportunity is created and defaults to the correct lead when an opportunity is created from a converted lead.	
mixin(OString!"originatingLeadId"); 
///Unique identifier of the account with which the opportunity is associated.	
mixin(OString!"accountId"); 
///Unique identifier of the contact associated with the opportunity.	
mixin(OString!"contactId"); 
///Shows the campaign that the opportunity was created from. The ID is used for tracking the success of the campaign.	
mixin(OString!"campaignId"); 
///The account manager responsible for the opportunity.	
mixin(OString!"accountManagerId"); 
///The organizational unit in charge of the opportunity.	
mixin(OString!"contractOrganizationalUnitId"); 
///Whether the Opportunity is for an Item- based or a Work-based sale	
mixin(OString!"orderType"); 
mixin(OString!"orderType_display"); ///

}
auto BUSOpportunity() { return new DBUSOpportunity; }
auto BUSOpportunity(UUID newId, string newName) { return new DBUSOpportunity(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSOpportunities {
  mixin(IEIEntitiesRest!("Opportunity", "Opportunities"));
}

@safe class DBUSOpportunities : IBUSOpportunities {
  mixin(OEntitiesInner!("Opportunity", "Opportunities"));
  mixin(OEntitiesRest!("Opportunity", "Opportunities"));
}
