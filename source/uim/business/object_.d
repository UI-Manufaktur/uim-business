module uim.business.object_;

import uim.business;

@safe class DBUSObject {
  this() {}
  this(UUID newId, string newName) { this(); id = newId; name = newName; }

  /// Unique identifier
  mixin(OUuid!"id");
  /// A unique descriptive name
  mixin(OString!"name");
  /// A title
  mixin(OString!"title");
  /// Date and time when the entity was created.
  mixin(OTimestamp!"createdOn");
  ///   createdBy	Unique identifier of the user who created the entity.	
  mixin(OUuid!"createdBy");
  ///	Date and time when the entity was modified.	
  mixin(OTimestamp!"modifiedOn");
  ///	Unique identifier of the user who modified the entity.
  mixin(OUuid!"modifiedBy");
  ///	Date and time when the entity was locked.	
  mixin(OTimestamp!"lockedOn");
  ///	Unique identifier of the user who locked the entity.
  mixin(OUuid!"lockedBy");
  ///	Date and time when the entity was deleted.	
  mixin(OTimestamp!"deletedOn");
  ///	Unique identifier of the user who deleted the entity.
  mixin(OUuid!"deletedBy");
  mixin(OString!"description");

  /// Versioning
  mixin(OCounter!"versionId");
  mixin(OBool!"currentVersion");
  mixin(OTimestamp!"versionOn");
  mixin(OUuid!"versionBy");
  mixin(OString!"versionNote");

}
auto BUSObject() { return new DBUSObject; }
auto BUSObject(UUID newId, string newName) { return new DBUSObject(newId, newName); }
unittest {
  auto obj = BUSObject; obj.name = "test";
  assert(obj.name == "test");
}

@path("/api/demo/")
interface IBUSObjects {
  mixin(IEntitiesFragment!("object", "objects"));
}
@safe class DBUSObjects : IBUSObjects{
  this() {
    _entities ~= new DBUSObject(randomUUID, "hi");
    _entities ~= new DBUSObject(randomUUID, "world");
  }

  DBUSObject[] _entities;

  DBUSObject[] all() { 
    return _entities;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSObject get(string _id) { 
    DBUSObject result;

    result = new DBUSObject;

    return result;
  }
  DBUSObject[] versions(string _id) { 
    return _entities;
  }

    bool exists(string _id) {
    return true;
  }

	DBUSObject create(DBUSObject entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSObject update(DBUSObject entity) {
   return entity; 
  }
}
