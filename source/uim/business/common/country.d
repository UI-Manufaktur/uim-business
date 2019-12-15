module uim.business.common.country;

import uim.business;

@safe class DBUSCountry : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSCountry() { return new DBUSCountry; }
auto BUSCountry(UUID newId, string newName) { return new DBUSCountry(newId, newName); }
unittest {
  // writeln();
}

@path("/api/demo/")
interface IBUSCountries {
  mixin(IEntitiesFragment!("country", "countries"));
}

@safe class DBUSCountries : IBUSCountries {
  this() {
    _entities ~= new DBUSCountry(randomUUID, "hallo");
    _entities ~= new DBUSCountry(randomUUID, "world");
  }

  DBUSCountry[] _entities;

  DBUSCountry[] all() { 
    DBUSCountry[] results;  
    foreach(entity; _entities) results ~= entity;
    return results;
  }
  size_t count() { 
    return _entities.length;
  }
  DBUSCountry get(string _id) { 
    DBUSCountry result;

    result = _entities[0];

    return result;
  }

  DBUSCountry[] versions(string _id) { 
    DBUSCountry[] results;
  
    foreach(entity; _entities) results ~= entity;

    return results;
  }

  bool exists(string _id) {
    return true;
  }

	DBUSCountry create(DBUSCountry entity) {
    _entities ~= entity;
    return entity;
  }

	DBUSCountry update(DBUSCountry entity) {
   return entity; 
  }
}
/*

*/