module uim.business.companies.company;

import uim.business;

@safe class DBUSCompany : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSCompany() { return new DBUSCompany; }
auto BUSCompany(UUID newId, string newName) { return new DBUSCompany(newId, newName); }
unittest {
  // writeln();
}

@path("/api/demo/")
interface IBUSCompanies {
  mixin(IEntitiesFragment!("company", "companies"));
}

@safe class DBUSCompanies : IBUSCompanies {
  this() {
    _entities ~= new DBUSCompany(randomUUID, "hallo");
    _entities ~= new DBUSCompany(randomUUID, "world");
  }

  DBUSCompany[] _entities;

  DBUSCompany[] all() { 
    DBUSCompany[] results;  
    foreach(entity; _entities) results ~= entity;
    return results;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSCompany get(string _id) { 
    DBUSCompany result;

    result = _entities[0];

    return result;
  }

  DBUSCompany[] versions(string _id) { 
    DBUSCompany[] results;
  
    foreach(entity; _entities) results ~= entity;

    return results;
  }

  bool exists(string _id) {
    return true;
  }

	DBUSCompany create(DBUSCompany entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSCompany update(DBUSCompany entity) {
   return entity; 
  }
}
/*
Attributes
Attributes
Name	Description	First Included in Instance
createdOn	Date and time when the record was created.	foundationCommon/Company
createdBy	Unique identifier of the user who created the record.	foundationCommon/Company
modifiedOn	Date and time when the record was modified.	foundationCommon/Company
modifiedBy	Unique identifier of the user who modified the record.	foundationCommon/Company
createdOnBehalfBy	Unique identifier of the delegate user who created the record.	foundationCommon/Company
modifiedOnBehalfBy	Unique identifier of the delegate user who modified the record.	foundationCommon/Company
overriddenCreatedOn	Date and time that the record was migrated.	foundationCommon/Company
importSequenceNumber	Unique identifier of the data import or data migration that created this record.	foundationCommon/Company
ownerIdType	The type of owner, either User or Team.	foundationCommon/Company
ownerId	Owner Id	foundationCommon/Company
owningBusinessUnit	Unique identifier for the business unit that owns the record	foundationCommon/Company
owningUser	Unique identifier of the user that owns the activity.	foundationCommon/Company
owningTeam	Unique identifier for the team that owns the record.	foundationCommon/Company
timeZoneRuleVersionNumber	For internal use only.	foundationCommon/Company
UTCConversionTimeZoneCode	Time zone code that was in use when the record was created.	foundationCommon/Company
versionNumber	Version Number	foundationCommon/Company
companyId	Unique identifier of the company.	foundationCommon/Company
name	A name for the company.	foundationCommon/Company
companyType	The type of company.	foundationCommon/Company
companyType_display		foundationCommon/Company
stateCode	Status of the Company	foundationCommon/Company
stateCode_display		foundationCommon/Company
statusCode	Reason for the status of the Company	foundationCommon/Company
statusCode_display		foundationCommon/Company


*/