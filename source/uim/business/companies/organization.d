module uim.business.companies.organization;
/*
Attributes
Name	Description	First Included in Instance
organizationId	Unique identifier of the organization.	applicationCommon/Organization
name	Name of the organization. The name is set when Microsoft CRM is installed and should not be changed.	applicationCommon/Organization
userGroupId	Unique identifier of the default group of users in the organization.	applicationCommon/Organization
privilegeUserGroupId	Unique identifier of the default privilege for users in the organization.	applicationCommon/Organization
recurrenceExpansionJobBatchSize	Specifies the value for number of instances created in on demand job in one shot.	applicationCommon/Organization
recurrenceExpansionJobBatchInterval	Specifies the interval (in seconds) for pausing expansion job.	applicationCommon/Organization
fiscalPeriodType	Type of fiscal period used throughout Microsoft CRM.	applicationCommon/Organization
fiscalCalendarStart	Start date for the fiscal period that is to be used throughout Microsoft CRM.	applicationCommon/Organization
dateFormatCode	Information about how the date is displayed throughout Microsoft CRM.	applicationCommon/Organization
dateFormatCode_display		applicationCommon/Organization
timeFormatCode	Information that specifies how the time is displayed throughout Microsoft CRM.	applicationCommon/Organization
timeFormatCode_display		applicationCommon/Organization
currencySymbol	Symbol used for currency throughout Microsoft Dynamics 365.	applicationCommon/Organization
weekStartDayCode	Designated first day of the week throughout Microsoft Dynamics 365.	applicationCommon/Organization
weekStartDayCode_display		applicationCommon/Organization
dateSeparator	Character used to separate the month, the day, and the year in dates throughout Microsoft Dynamics 365.	applicationCommon/Organization
fullNameConventionCode	Order in which names are to be displayed throughout Microsoft CRM.	applicationCommon/Organization
fullNameConventionCode_display		applicationCommon/Organization
negativeFormatCode	Information that specifies how negative numbers are displayed throughout Microsoft CRM.	applicationCommon/Organization
negativeFormatCode_display		applicationCommon/Organization
numberFormat	Specification of how numbers are displayed throughout Microsoft CRM.	applicationCommon/Organization
isDisabled	Information that specifies whether the organization is disabled.	applicationCommon/Organization
disabledReason	Reason for disabling the organization.	applicationCommon/Organization
kbPrefix	Prefix to use for all articles in Microsoft Dynamics 365.	applicationCommon/Organization
currentKbNumber	First article number to use. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
casePrefix	Prefix to use for all cases throughout Microsoft Dynamics 365.	applicationCommon/Organization
currentCaseNumber	First case number to use. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
contractPrefix	Prefix to use for all contracts throughout Microsoft Dynamics 365.	applicationCommon/Organization
currentContractNumber	First contract number to use. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
quotePrefix	Prefix to use for all quotes throughout Microsoft Dynamics 365.	applicationCommon/Organization
currentQuoteNumber	First quote number to use. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
orderPrefix	Prefix to use for all orders throughout Microsoft Dynamics 365.	applicationCommon/Organization
currentOrderNumber	First order number to use. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
invoicePrefix	Prefix to use for all invoice numbers throughout Microsoft Dynamics 365.	applicationCommon/Organization
currentInvoiceNumber	First invoice number to use. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
uniqueSpecifierLength	Number of characters appended to invoice, quote, and order numbers.	applicationCommon/Organization
createdOn	Date and time when the organization was created.	applicationCommon/Organization
modifiedOn	Date and time when the organization was last modified.	applicationCommon/Organization
fiscalYearFormat	Information that specifies how the name of the fiscal year is displayed throughout Microsoft CRM.	applicationCommon/Organization
fiscalPeriodFormat	Information that specifies how the name of the fiscal period is displayed throughout Microsoft CRM.	applicationCommon/Organization
fiscalYearPeriodConnect	Information that specifies how the names of the fiscal year and the fiscal period should be connected when displayed together.	applicationCommon/Organization
languageCode	Preferred language for the organization.	applicationCommon/Organization
sortId	For internal use only.	applicationCommon/Organization
dateFormatString	String showing how the date is displayed throughout Microsoft CRM.	applicationCommon/Organization
timeFormatString	Text for how time is displayed in Microsoft Dynamics 365.	applicationCommon/Organization
pricingDecimalPrecision	Number of decimal places that can be used for prices.	applicationCommon/Organization
showWeekNumber	Information that specifies whether to display the week number in calendar displays throughout Microsoft CRM.	applicationCommon/Organization
nextTrackingNumber	Next token to be placed on the subject line of an email message.	applicationCommon/Organization
tagMaxAggressiveCycles	Maximum number of aggressive polling cycles executed for email auto-tagging when a new email is received.	applicationCommon/Organization
systemUserId	Unique identifier of the system user for the organization.	applicationCommon/Organization
createdBy	Unique identifier of the user who created the organization.	applicationCommon/Organization
grantAccessToNetworkService	For internal use only.	applicationCommon/Organization
allowOutlookScheduledSyncs	Indicates whether scheduled synchronizations to Outlook are allowed.	applicationCommon/Organization
allowMarketingEmailExecution	Indicates whether marketing emails execution is allowed.	applicationCommon/Organization
sqlAccessGroupId	For internal use only.	applicationCommon/Organization
currencyFormatCode	Information about how currency symbols are placed throughout Microsoft Dynamics CRM.	applicationCommon/Organization
currencyFormatCode_display		applicationCommon/Organization
fiscalSettingsUpdated	Information that specifies whether the fiscal settings have been updated.	applicationCommon/Organization
reportingGroupId	For internal use only.	applicationCommon/Organization
tokenExpiry	Duration used for token expiration.	applicationCommon/Organization
shareToPreviousOwnerOnAssign	Information that specifies whether to share to previous owner on assign.	applicationCommon/Organization
acknowledgementTemplateId	Unique identifier of the template to be used for acknowledgement when a user unsubscribes.	applicationCommon/Organization
modifiedBy	Unique identifier of the user who last modified the organization.	applicationCommon/Organization
integrationUserId	Unique identifier of the integration user for the organization.	applicationCommon/Organization
trackingTokenIdBase	Base number used to provide separate tracking token identifiers to users belonging to different deployments.	applicationCommon/Organization
businessClosureCalendarId	Unique identifier of the business closure calendar of organization.	applicationCommon/Organization
allowAutoUnsubscribeAcknowledgement	Indicates whether automatic unsubscribe acknowledgement email is allowed to send.	applicationCommon/Organization
allowAutoUnsubscribe	Indicates whether automatic unsubscribe is allowed.	applicationCommon/Organization
picture	For internal use only.	applicationCommon/Organization
versionNumber	Version number of the organization.	applicationCommon/Organization
trackingPrefix	History list of tracking token prefixes.	applicationCommon/Organization
minOutlookSyncInterval	Minimum allowed time between scheduled Outlook synchronizations.	applicationCommon/Organization
bulkOperationPrefix	Prefix used for bulk operation numbering.	applicationCommon/Organization
allowAutoResponseCreation	Indicates whether automatic response creation is allowed.	applicationCommon/Organization
maximumTrackingNumber	Maximum tracking number before recycling takes place.	applicationCommon/Organization
campaignPrefix	Prefix used for campaign numbering.	applicationCommon/Organization
sqlAccessGroupName	For internal use only.	applicationCommon/Organization
currentCampaignNumber	Current campaign number. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
fiscalYearDisplayCode	Information that specifies whether the fiscal year should be displayed based on the start date or the end date of the fiscal year.	applicationCommon/Organization
siteMapXml	XML string that defines the navigation structure for the application.	applicationCommon/Organization
isRegistered	For internal use only.	applicationCommon/Organization
reportingGroupName	For internal use only.	applicationCommon/Organization
currentBulkOperationNumber	Current bulk operation number. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
schemaNamePrefix	Prefix used for custom entities and attributes.	applicationCommon/Organization
ignoreInternalEmail	Indicates whether incoming email sent by internal Microsoft Dynamics 365 users or queues should be tracked.	applicationCommon/Organization
tagPollingPeriod	Normal polling frequency used for email receive auto-tagging in outlook.	applicationCommon/Organization
trackingTokenIdDigits	Number of digits used to represent a tracking token identifier.	applicationCommon/Organization
numberGroupFormat	Specifies how numbers are grouped in Microsoft Dynamics 365.	applicationCommon/Organization
longDateFormatCode	Information that specifies how the Long Date format is displayed in Microsoft Dynamics 365.	applicationCommon/Organization
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	applicationCommon/Organization
timeZoneRuleVersionNumber	For internal use only.	applicationCommon/Organization
currentImportSequenceNumber	Import sequence to use.	applicationCommon/Organization
parsedTablePrefix	Prefix used for parsed tables.	applicationCommon/Organization
v3CalloutConfigHash	Hash of the V3 callout configuration file.	applicationCommon/Organization
isFiscalPeriodMonthBased	Indicates whether the fiscal period is displayed as the month number.	applicationCommon/Organization
localeId	Unique identifier of the locale of the organization.	applicationCommon/Organization
parsedTableColumnPrefix	Prefix used for parsed table columns.	applicationCommon/Organization
supportUserId	Unique identifier of the support user for the organization.	applicationCommon/Organization
AMDesignator	AM designator to use throughout Microsoft Dynamics CRM.	applicationCommon/Organization
currencyDisplayOption	Indicates whether to display money fields with currency code or currency symbol.	applicationCommon/Organization
currencyDisplayOption_display		applicationCommon/Organization
minAddressBookSyncInterval	Normal polling frequency used for address book synchronization in Microsoft Office Outlook.	applicationCommon/Organization
isDuplicateDetectionEnabledForOnlineCreateUpdate	Indicates whether duplicate detection during online create or update is enabled.	applicationCommon/Organization
featureSet	Features to be enabled as an XML BLOB.	applicationCommon/Organization
blockedAttachments	Prevent upload or download of certain attachment types that are considered dangerous.	applicationCommon/Organization
isDuplicateDetectionEnabledForOfflineSync	Indicates whether duplicate detection of records during offline synchronization is enabled.	applicationCommon/Organization
allowOfflineScheduledSyncs	Indicates whether background offline synchronization in Microsoft Office Outlook is allowed.	applicationCommon/Organization
allowUnresolvedPartiesOnEmailSend	Indicates whether users are allowed to send email to unresolved parties (parties must still have an email address).	applicationCommon/Organization
timeSeparator	Text for how the time separator is displayed throughout Microsoft Dynamics 365.	applicationCommon/Organization
currentParsedTableNumber	First parsed table number to use.	applicationCommon/Organization
minOfflineSyncInterval	Normal polling frequency used for background offline synchronization in Microsoft Office Outlook.	applicationCommon/Organization
allowWebExcelExport	Indicates whether Web-based export of grids to Microsoft Office Excel is allowed.	applicationCommon/Organization
referenceSiteMapXml	XML string that defines the navigation structure for the application. This is the site map from the previously upgraded build and is used in a 3-way merge during upgrade.	applicationCommon/Organization
isDuplicateDetectionEnabledForImport	Indicates whether duplicate detection of records during import is enabled.	applicationCommon/Organization
calendarType	Calendar type for the system. Set to Gregorian US by default.	applicationCommon/Organization
SQMEnabled	Setting for SQM data collection, 0 no, 1 yes enabled	applicationCommon/Organization
negativeCurrencyFormatCode	Information that specifies how negative currency numbers are displayed throughout Microsoft Dynamics 365.	applicationCommon/Organization
allowAddressBookSyncs	Indicates whether background address book synchronization in Microsoft Office Outlook is allowed.	applicationCommon/Organization
ISVIntegrationCode	Indicates whether loading of Microsoft Dynamics 365 in a browser window that does not have address, tool, and menu bars is enabled.	applicationCommon/Organization
ISVIntegrationCode_display		applicationCommon/Organization
decimalSymbol	Symbol used for decimal in Microsoft Dynamics 365.	applicationCommon/Organization
maxUploadFileSize	Maximum allowed size of an attachment.	applicationCommon/Organization
isAppMode	Indicates whether loading of Microsoft Dynamics 365 in a browser window that does not have address, tool, and menu bars is enabled.	applicationCommon/Organization
enablePricingOnCreate	Enable pricing calculations on a Create call.	applicationCommon/Organization
isSOPIntegrationEnabled	Enable sales order processing integration.	applicationCommon/Organization
PMDesignator	PM designator to use throughout Microsoft Dynamics 365.	applicationCommon/Organization
currencyDecimalPrecision	Number of decimal places that can be used for currency.	applicationCommon/Organization
maxAppointmentDurationDays	Maximum number of days an appointment can last.	applicationCommon/Organization
emailSendPollingPeriod	Normal polling frequency used for sending email in Microsoft Office Outlook.	applicationCommon/Organization
renderSecureIFrameForEmail	Flag to render the body of email in the Web form in an IFRAME with the security='restricted' attribute set. This is additional security but can cause a credentials prompt.	applicationCommon/Organization
numberSeparator	Symbol used for number separation in Microsoft Dynamics 365.	applicationCommon/Organization
privReportingGroupId	For internal use only.	applicationCommon/Organization
baseCurrencyId	Unique identifier of the base currency of the organization.	applicationCommon/Organization
maxRecordsForExportToExcel	Maximum number of records that will be exported to a static Microsoft Office Excel worksheet when exporting from the grid.	applicationCommon/Organization
privReportingGroupName	For internal use only.	applicationCommon/Organization
yearStartWeekCode	Information that specifies how the first week of the year is specified in Microsoft Dynamics 365.	applicationCommon/Organization
isPresenceEnabled	Information on whether IM presence is enabled.	applicationCommon/Organization
isDuplicateDetectionEnabled	Indicates whether duplicate detection of records is enabled.	applicationCommon/Organization
expireSubscriptionsInDays	Maximum number of days before deleting inactive subscriptions.	applicationCommon/Organization
isAuditEnabled	Enable or disable auditing of changes.	applicationCommon/Organization
baseCurrencyPrecision	Number of decimal places that can be used for the base currency.	applicationCommon/Organization
baseCurrencySymbol	Symbol used for the base currency.	applicationCommon/Organization
maxRecordsForLookupFilters	Maximum number of lookup and picklist records that can be selected by user for filtering.	applicationCommon/Organization
allowEntityOnlyAudit	Indicates whether auditing of changes to entity is allowed when no attributes have changed.	applicationCommon/Organization
defaultRecurrenceEndRangeType	Type of default recurrence end range date.	applicationCommon/Organization
defaultRecurrenceEndRangeType_display		applicationCommon/Organization
futureExpansionWindow	Specifies the maximum number of months in future for which the recurring activities can be created.	applicationCommon/Organization
pastExpansionWindow	Specifies the maximum number of months in past for which the recurring activities can be created.	applicationCommon/Organization
recurrenceExpansionSynchCreateMax	Specifies the maximum number of instances to be created synchronously after creating a recurring appointment.	applicationCommon/Organization
recurrenceDefaultNumberOfOccurrences	Specifies the default value for number of occurrences field in the recurrence dialog.	applicationCommon/Organization
createdOnBehalfBy	Unique identifier of the delegate user who created the organization.	applicationCommon/Organization
modifiedOnBehalfBy	Unique identifier of the delegate user who last modified the organization.	applicationCommon/Organization
getStartedPaneContentEnabled	Indicates whether Get Started content is enabled for this organization.	applicationCommon/Organization
useReadForm	Indicates whether the read-optimized form should be enabled for this organization.	applicationCommon/Organization
initialVersion	Initial version of the organization.	applicationCommon/Organization
sampleDataImportId	Unique identifier of the sample data import job.	applicationCommon/Organization
reportScriptErrors	Picklist for selecting the organization preference for reporting scripting errors.	applicationCommon/Organization
reportScriptErrors_display		applicationCommon/Organization
requireApprovalForUserEmail	Indicates whether Send As Other User privilege is enabled.	applicationCommon/Organization
requireApprovalForQueueEmail	Indicates whether Send As Other User privilege is enabled.	applicationCommon/Organization
goalRollupExpiryTime	Number of days after the goal's end date after which the rollup of the goal stops automatically.	applicationCommon/Organization
goalRollupFrequency	Number of hours between automatic rollup jobs .	applicationCommon/Organization
autoApplyDefaultonCaseCreate	Select whether to auto apply the default customer entitlement on case creation.	applicationCommon/Organization
autoApplyDefaultonCaseUpdate	Select whether to auto apply the default customer entitlement on case update.	applicationCommon/Organization
fiscalYearFormatPrefix	Prefix for the display of the fiscal year.	applicationCommon/Organization
fiscalYearFormatPrefix_display		applicationCommon/Organization
fiscalYearFormatSuffix	Suffix for the display of the fiscal year.	applicationCommon/Organization
fiscalYearFormatSuffix_display		applicationCommon/Organization
fiscalYearFormatYear	Format for the year.	applicationCommon/Organization
fiscalYearFormatYear_display		applicationCommon/Organization
discountCalculationMethod	Discount calculation method for the QOOI product.	applicationCommon/Organization
discountCalculationMethod_display		applicationCommon/Organization
fiscalPeriodFormatPeriod	Format in which the fiscal period will be displayed.	applicationCommon/Organization
fiscalPeriodFormatPeriod_display		applicationCommon/Organization
allowClientMessageBarAd	Indicates whether Outlook Client message bar advertisement is allowed.	applicationCommon/Organization
allowUserFormModePreference	Indicates whether individuals can select their form mode preference in their personal options.	applicationCommon/Organization
hashFilterKeywords	Filter Subject Keywords	applicationCommon/Organization
hashMaxCount	Maximum number of subject keywords or recipients used for correlation	applicationCommon/Organization
hashDeltaSubjectCount	Maximum difference allowed between subject keywords count of the email messaged to be correlated	applicationCommon/Organization
hashMinAddressCount	Minimum number of recipients required to match for email messaged to be correlated	applicationCommon/Organization
enableSmartMatching	Use Smart Matching.	applicationCommon/Organization
pinpointLanguageCode		applicationCommon/Organization
orgDbOrgSettings	Organization settings stored in Organization Database.	applicationCommon/Organization
isUserAccessAuditEnabled	Enable or disable auditing of user access.	applicationCommon/Organization
userAccessAuditingInterval	The interval at which user access is checked for auditing.	applicationCommon/Organization
quickFindRecordLimitEnabled	Indicates whether a quick find record limit should be enabled for this organization (allows for faster Quick Find queries but prevents overly broad searches).	applicationCommon/Organization
enableBingMapsIntegration	Enable Integration with Bing Maps	applicationCommon/Organization
isDefaultCountryCodeCheckEnabled	Enable or disable country code selection.	applicationCommon/Organization
defaultCountryCode	Text area to enter default country code.	applicationCommon/Organization
useSkypeProtocol	Indicates default protocol selected for organization.	applicationCommon/Organization
incomingEmailExchangeEmailRetrievalBatchSize	Setting for the Async Service Mailbox Queue. Defines the retrieval batch size of exchange server.	applicationCommon/Organization
emailCorrelationEnabled	Flag to turn email correlation on or off.	applicationCommon/Organization
yammerOAuthAccessTokenExpired	Denotes whether the OAuth access token for Yammer network has expired	applicationCommon/Organization
defaultEmailSettings	XML string containing the default email settings that are applied when a user or queue is created.	applicationCommon/Organization
yammerGroupId	Denotes the Yammer group ID	applicationCommon/Organization
yammerNetworkPermalink	Denotes the Yammer network permalink	applicationCommon/Organization
yammerPostMethod	Internal Use Only	applicationCommon/Organization
yammerPostMethod_display		applicationCommon/Organization
emailConnectionChannel	Select if you want to use the Email Router or server-side synchronization for email processing.	applicationCommon/Organization
emailConnectionChannel_display		applicationCommon/Organization
defaultEmailServerProfileId	Unique identifier of the default email server profile.	applicationCommon/Organization
isAutoSaveEnabled	Information on whether auto save is enabled.	applicationCommon/Organization
bingMapsApiKey	Api Key to be used in requests to Bing Maps services.	applicationCommon/Organization
generateAlertsForErrors	Indicates whether alerts will be generated for errors.	applicationCommon/Organization
generateAlertsForInformation	Indicates whether alerts will be generated for information.	applicationCommon/Organization
generateAlertsForWarnings	Indicates whether alerts will be generated for warnings.	applicationCommon/Organization
notifyMailboxOwnerOfEmailServerLevelAlerts	Indicates whether mailbox owners will be notified of email server profile level alerts.	applicationCommon/Organization
maximumActiveBusinessProcessFlowsAllowedPerEntity	Maximum number of active business process flows allowed per entity	applicationCommon/Organization
entityImageId	For internal use only.	applicationCommon/Organization
allowUsersSeeAppdownloadMessage	Indicates whether the showing tablet application notification bars in a browser is allowed.	applicationCommon/Organization
signupOutlookDownloadFWLink	CRM for Outlook Download URL	applicationCommon/Organization
cascadeStatusUpdate	Flag to cascade Update on incident.	applicationCommon/Organization
restrictStatusUpdate	Flag to restrict Update on incident.	applicationCommon/Organization
suppressSLA	Indicates whether SLA is suppressed.	applicationCommon/Organization
socialInsightsTermsAccepted	Flag for whether the organization has accepted the Social Insights terms of use.	applicationCommon/Organization
socialInsightsInstance	Identifier for the Social Insights instance for the organization.	applicationCommon/Organization
disableSocialCare	Indicates whether Social Care is disabled.	applicationCommon/Organization
maxProductsInBundle	Restrict the maximum no of items in a bundle	applicationCommon/Organization
useInbuiltRuleForDefaultPricelistSelection	Flag indicates whether to Use Inbuilt Rule For DefaultPricelist.	applicationCommon/Organization
OOBPriceCalculationEnabled	Enable OOB pricing calculation logic for Opportunity, Quote, Order and Invoice entities.	applicationCommon/Organization
isHierarchicalSecurityModelEnabled	Enable Hierarchical Security Model	applicationCommon/Organization
maximumDynamicPropertiesAllowed	Restrict the maximum number of product properties for a product family/bundle	applicationCommon/Organization
usePositionHierarchy	Use position hierarchy	applicationCommon/Organization
maxDepthForHierarchicalSecurityModel	Maximum depth for hierarchy security propagation.	applicationCommon/Organization
slaPauseStates	Contains the on hold case status values.	applicationCommon/Organization
socialInsightsEnabled	Flag for whether the organization is using Social Insights.	applicationCommon/Organization
isAppointmentAttachmentSyncEnabled	Enable or disable attachments sync for outlook and exchange.	applicationCommon/Organization
isAssignedTasksSyncEnabled	Enable or disable assigned tasks sync for outlook and exchange.	applicationCommon/Organization
isContactMailingAddressSyncEnabled	Enable or disable mailing address sync for outlook and exchange.	applicationCommon/Organization
maxSupportedInternetExplorerVersion	The maximum version of IE to run browser emulation for in Outlook client	applicationCommon/Organization
globalHelpUrl	URL for the web page global help.	applicationCommon/Organization
globalHelpUrlEnabled	Indicates whether the customizable global help is enabled.	applicationCommon/Organization
globalAppendUrlParametersEnabled	Indicates whether the append URL parameters is enabled.	applicationCommon/Organization
KMSettings	XML string containing the Knowledge Management settings that are applied in Knowledge Management Wizard.	applicationCommon/Organization
createProductsWithoutParentInActiveState	Enable Initial state of newly created products to be Active instead of Draft	applicationCommon/Organization
isMailboxInactiveBackoffEnabled	Enable or disable mailbox keep alive for Server Side Sync.	applicationCommon/Organization
isFullTextSearchEnabled	Indicates whether full-text search for Quick Find entities should be enabled for the organization.	applicationCommon/Organization
enforceReadOnlyPlugins	Organization setting to enforce read only plugins.	applicationCommon/Organization
sharePointDeploymentType	Indicates which SharePoint deployment type is configured for Server to Server. (Online or On-Premises)	applicationCommon/Organization
sharePointDeploymentType_display		applicationCommon/Organization
organizationState	Indicates the organization lifecycle state	applicationCommon/Organization
organizationState_display		applicationCommon/Organization
defaultThemeData	Default theme data for the organization.	applicationCommon/Organization
isFolderBasedTrackingEnabled	Enable or disable folder based tracking for Server Side Sync.	applicationCommon/Organization
webResourceHash	Hash value of web resources.	applicationCommon/Organization
expireChangeTrackingInDays	Maximum number of days to keep change tracking deleted records	applicationCommon/Organization
maxFolderBasedTrackingMappings	Maximum number of Folder Based Tracking mappings user can add	applicationCommon/Organization
privacyStatementUrl	Privacy Statement URL	applicationCommon/Organization
pluginTraceLogSetting	Plug-in Trace Log Setting for the Organization.	applicationCommon/Organization
pluginTraceLogSetting_display		applicationCommon/Organization
isMailboxForcedUnlockingEnabled	Enable or disable forced unlocking for Server Side Sync mailboxes.	applicationCommon/Organization
mailboxIntermittentIssueMinRange	Lower Threshold For Mailbox Intermittent Issue.	applicationCommon/Organization
mailboxPermanentIssueMinRange	Lower Threshold For Mailbox Permanent Issue.	applicationCommon/Organization
highContrastThemeData	High contrast theme data for the organization.	applicationCommon/Organization
delegatedAdminUserId	Unique identifier of the delegated admin user for the organization.	applicationCommon/Organization
isExternalSearchIndexEnabled	Select whether data can be synchronized with an external search index.	applicationCommon/Organization
isMobileOfflineEnabled	Indicates whether the feature MobileOffline should be enabled for the organization.	applicationCommon/Organization
isOfficeGraphEnabled	Indicates whether the feature OfficeGraph should be enabled for the organization.	applicationCommon/Organization
isOneDriveEnabled	Indicates whether the feature One Drive should be enabled for the organization.	applicationCommon/Organization
externalPartyEntitySettings	XML string containing the ExternalPartyEnabled entities settings.	applicationCommon/Organization
externalPartyCorrelationKeys	XML string containing the ExternalPartyEnabled entities correlation keys for association of existing External Party instance entities to newly created IsExternalPartyEnabled entities.For internal use only	applicationCommon/Organization
maxVerboseLoggingMailbox	Maximum number of mailboxes that can be toggled for verbose logging	applicationCommon/Organization
maxVerboseLoggingSyncCycles	Maximum number of sync cycles for which verbose logging will be enabled by default	applicationCommon/Organization
mobileOfflineSyncInterval	Sync interval for mobile offline.	applicationCommon/Organization
officeGraphDelveUrl	The url to open the Delve for the organization.	applicationCommon/Organization
mobileOfflineMinLicenseTrial	Minimum number of user license required for mobile offline service by trial organization	applicationCommon/Organization
mobileOfflineMinLicenseProd	Minimum number of user license required for mobile offline service by production/preview organization	applicationCommon/Organization
daysSinceRecordLastModifiedMaxValue	The maximum value for the Mobile Offline setting Days since record last modified	applicationCommon/Organization
taskBasedFlowEnabled	Select whether to turn on task flows for the organization.	applicationCommon/Organization
showKBArticleDeprecationNotification	Select whether to display a KB article deprecation notification to the user.	applicationCommon/Organization
azureSchedulerJobCollectionName	For internal use only.	applicationCommon/Organization
cortanaProactiveExperienceEnabled	Indicates whether the feature CortanaProactiveExperience Flow processes should be enabled for the organization.	applicationCommon/Organization
officeAppsAutoDeploymentEnabled	Indicates whether the Office Apps auto deployment is enabled for the organization.	applicationCommon/Organization
appDesignerExperienceEnabled	Indicates whether the appDesignerExperience is enabled for the organization.	applicationCommon/Organization
enableImmersiveSkypeIntegration	Enable Integration with Immersive Skype	applicationCommon/Organization
autoApplySLA	Indicates whether to Auto-apply SLA on case record update after SLA was manually applied.	applicationCommon/Organization
isEmailServerProfileContentFilteringEnabled	Enable Email Server Profile content filtering	applicationCommon/Organization
isDelegateAccessEnabled	Enable Delegation Access content	applicationCommon/Organization
displayNavigationTour	Indicates whether or not navigation tour is displayed.	applicationCommon/Organization
useLegacyRendering	Select whether to use legacy form rendering.	applicationCommon/Organization
defaultMobileOfflineProfileId	Unique identifier of the default mobile offline profile.	applicationCommon/Organization
kaPrefix	Type the prefix to use for all knowledge articles in Microsoft Dynamics 365.	applicationCommon/Organization
currentKaNumber	Enter the first number to use for knowledge articles. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
currentCategoryNumber	Enter the first number to use for Categories. Deprecated. Use SetAutoNumberSeed message.	applicationCommon/Organization
categoryPrefix	Type the prefix to use for all categories in Microsoft Dynamics 365.	applicationCommon/Organization
maximumEntitiesWithActiveSLA	Maximum number of active SLA allowed per entity in online	applicationCommon/Organization
maximumSLAKPIPerEntityWithActiveSLA	Maximum number of SLA KPI per active SLA allowed for entity in online	applicationCommon/Organization
isConflictDetectionEnabledForMobileClient	Information that specifies whether conflict detection for mobile client is enabled.	applicationCommon/Organization
isDelveActionHubIntegrationEnabled	Indicates whether the feature Action Hub should be enabled for the organization.	applicationCommon/Organization
orgInsightsEnabled	Select whether to turn on OrgInsights for the organization.	applicationCommon/Organization
productRecommendationsEnabled	Select whether to turn on product recommendations for the organization.	applicationCommon/Organization
textAnalyticsEnabled	Select whether to turn on text analytics for the organization.	applicationCommon/Organization
maxConditionsForMobileOfflineFilters	Maximum number of conditions allowed for mobile offline filters	applicationCommon/Organization
isFolderAutoCreatedonSP	Select whether folders should be automatically created on SharePoint.	applicationCommon/Organization
powerBiFeatureEnabled	Indicates whether the Power BI feature should be enabled for the organization.	applicationCommon/Organization
isActionCardEnabled	Indicates whether the feature Action Card should be enabled for the organization.	applicationCommon/Organization
isEmailMonitoringAllowed	Allow tracking recipient activity on sent emails.	applicationCommon/Organization
isActivityAnalysisEnabled	Indicates whether the feature Relationship Analytics should be enabled for the organization.	applicationCommon/Organization
isAutoDataCaptureEnabled	Indicates whether the feature Auto Capture should be enabled for the organization.	applicationCommon/Organization
externalBaseUrl	Specify the base URL to use to look for external document suggestions.	applicationCommon/Organization
isPreviewEnabledForActionCard	Indicates whether the Preview feature for Action Card should be enabled for the organization.	applicationCommon/Organization
isPreviewForEmailMonitoringAllowed	Is Preview For Email Monitoring Allowed.	applicationCommon/Organization
unresolveEmailAddressIfMultipleMatch	Indicates whether email address should be unresolved if multiple matches are found	applicationCommon/Organization
riErrorStatus	Error status of Relationship Insights provisioning.	applicationCommon/Organization
widgetProperties	For Internal use only.	applicationCommon/Organization
enableMicrosoftFlowIntegration	Enable Integration with Power Automate	applicationCommon/Organization
isEnabledForAllRoles	Indicates whether appmodule is enabled for all roles	applicationCommon/Organization
isPreviewForAutoCaptureEnabled	Indicates whether the feature Auto Capture should be enabled for the organization at Preview Settings.	applicationCommon/Organization
defaultCrmCustomName	Name of the default crm custom.	applicationCommon/Organization
ACIWebEndpointUrl	ACI Web Endpoint URL.	applicationCommon/Organization
enableLPAuthoring	Select to enable learning path auhtoring.	applicationCommon/Organization
isResourceBookingExchangeSyncEnabled	Indicates if the synchronization of user resource booking with Exchange is enabled at organization level.	applicationCommon/Organization
isMobileClientOnDemandSyncEnabled	Information that specifies whether mobile client on demand sync is enabled.	applicationCommon/Organization
postMessageWhitelistDomains	For internal use only.	applicationCommon/Organization
isRelationshipInsightsEnabled	Indicates whether the feature Relationship Insights should be enabled for the organization.	applicationCommon/Organization
resolveSimilarUnresolvedEmailAddress	Apply same email address to all unresolved matches when you manually resolve it for one	applicationCommon/Organization
isTextWrapEnabled	Information on whether text wrap is enabled.	applicationCommon/Organization
sessionTimeoutEnabled	Information that specifies whether session timeout is enabled	applicationCommon/Organization
sessionTimeoutInMins	Session timeout in minutes	applicationCommon/Organization
sessionTimeoutReminderInMins	Session timeout reminder in minutes	applicationCommon/Organization
microsoftFlowEnvironment	Environment selected for Integration with Power Automate	applicationCommon/Organization
inactivityTimeoutEnabled	Information that specifies whether Inactivity timeout is enabled	applicationCommon/Organization
inactivityTimeoutInMins	Inactivity timeout in minutes	applicationCommon/Organization
inactivityTimeoutReminderInMins	Inactivity timeout reminder in minutes	applicationCommon/Organization
syncOptInSelection	Indicates the selection to use the dynamics 365 azure sync framework or server side sync.	applicationCommon/Organization
syncOptInSelectionStatus	Indicates the status of the opt-in or opt-out operation for dynamics 365 azure sync.	applicationCommon/Organization
syncOptInSelectionStatus_display		applicationCommon/Organization
isActionSupportFeatureEnabled	Information that specifies whether Action Support Feature is enabled	applicationCommon/Organization
isBPFEntityCustomizationFeatureEnabled	Information that specifies whether BPF Entity Customization Feature is enabled	applicationCommon/Organization
boundDashboardDefaultCardExpanded	Display cards in expanded state for interactive dashboard	applicationCommon/Organization
maxActionStepsInBPF	Maximum number of actionsteps allowed in a BPF	applicationCommon/Organization
serveStaticResourcesFromAzureCDN	Serve Static Content From CDN	applicationCommon/Organization
isExternalFileStorageEnabled	Indicates whether the organization's files are being stored in Azure.	applicationCommon/Organization
clientFeatureSet	Client Features to be enabled as an XML BLOB.	applicationCommon/Organization
isReadAuditEnabled	Enable or disable auditing of read operations.	applicationCommon/Organization
isNotesAnalysisEnabled	Indicates whether the feature Notes Analysis should be enabled for the organization.	applicationCommon/Organization
allowLegacyDialogsEmbedding	Enable embedding of certain legacy dialogs in Unified Interface browser client	applicationCommon/Organization
appointmentRichEditorExperience	Information on whether rich editing experience for Appointment is enabled.
*/