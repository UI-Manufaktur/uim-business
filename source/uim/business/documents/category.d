module uim.business.documents.category;

import uim.business;

@safe class DBUSDocumentCategory : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSDocumentCategory() { return new DBUSDocumentCategory; }
auto BUSDocumentCategory(UUID newId, string newName) { return new DBUSDocumentCategory(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSDocumentCategories {
  mixin(IEIEntitiesRest!("DocumentCategory", "DocumentCategories"));
}

@safe class DBUSDocumentCategories : IBUSDocumentCategories {
  mixin(OEntitiesInner!("DocumentCategory", "DocumentCategories"));
  mixin(OEntitiesRest!("DocumentCategory", "DocumentCategories"));
}

/*

Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	nonProfit/DocumentCategory
createdBy	Unique identifier of the user who created the record.	nonProfit/DocumentCategory
modifiedOn	Date and time when the record was modified.	nonProfit/DocumentCategory
modifiedBy	Unique identifier of the user who modified the record.	nonProfit/DocumentCategory
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	nonProfit/DocumentCategory
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	nonProfit/DocumentCategory
overriddenCreatedOn	Date and time that the record was migrated.	nonProfit/DocumentCategory
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	nonProfit/DocumentCategory
ownerIdType	The type of owner, either User or Team.	nonProfit/DocumentCategory
ownerId	Owner Id	nonProfit/DocumentCategory
owningBusinessUnit	Unique identifier for the business unit that owns the record	nonProfit/DocumentCategory
owningUser	Unique identifier of the user that owns the activity.	nonProfit/DocumentCategory
owningTeam	Unique identifier for the team that owns the record.	nonProfit/DocumentCategory
timeZoneRuleVersionNumber	For internal use only.	nonProfit/DocumentCategory
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	nonProfit/DocumentCategory
versionNumber	Version Number	nonProfit/DocumentCategory
DocumentCategoryId	Unique identifier for entity instances	nonProfit/DocumentCategory
stateCode	Status of the Document Category	nonProfit/DocumentCategory
stateCode_display		nonProfit/DocumentCategory
statusCode	Reason for the status of the Document Category	nonProfit/DocumentCategory
statusCode_display		nonProfit/DocumentCategory
name	The name of the custom entity.	nonProfit/DocumentCategory
category	IATI Document Category.	nonProfit/DocumentCategory
category_display		nonProfit/DocumentCategory
documentLinkId	Unique identifier for Document Link associated with Document Category.	nonProfit/DocumentCategory

*/