module uim.business.object_;

import uim.business;

interface IBUSObject {
}
class DBUSObject : IBUSObject{
  this() {}

  mixin(OString!"name");
  mixin(OTimestamp!"createdOn");
  mixin(OUuid!"createdBy");
  /*;
  id	Unique identifier of the invoice.	
  createdOn	Date and time when the record was created.	
  createdBy	Unique identifier of the user who created the record.	
  modifiedOn	Date and time when the record was modified.	
  modifiedBy	Unique identifier of the user who modified the record.
  */
}
auto BUSObject() { return new DBUSObject; }
unittest {
  auto obj = BUSObject; obj.name = "test";
  assert(obj.name == "test");
}

interface IBUSObjects {
  @path("/api/v1/chapters")
  DBUSObject[] all();
}

class DBUSObjects : IBUSObjects {
  DBUSObject[] all() { 
    DBUSObject[] result;

    result ~= BUSObject;

    return result;
  }
}