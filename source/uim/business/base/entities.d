module uim.business.base.entities;

import uim.business;

template IEIEntitiesRest(string entityName, string entitiesName) {
  const char[] IEIEntitiesRest = `
  @path("`~toLower(entitiesName)~`")
  @method(HTTPMethod.GET)
  DBUS`~entityName~`[] all();

	@path("`~toLower(entitiesName)~`/count")
	@method(HTTPMethod.GET)
	size_t count();

  @path("`~toLower(entitiesName)~`/:id")
  @method(HTTPMethod.GET)
  DBUS`~entityName~` get(string _id);

  @path("`~toLower(entitiesName)~`/:id/versions")
  @method(HTTPMethod.GET)
  DBUS`~entityName~`[] versions(string _id);

  @path("`~toLower(entitiesName)~`/exists/:id")
	@method(HTTPMethod.GET)
	bool exists(string _id);

	@method(HTTPMethod.POST)
	@path("/create")
	DBUS`~entityName~` create();	

	@path("/update")
	@method(HTTPMethod.PUT)
	DBUS`~entityName~` update(DBUS`~entityName~` entity);	
`;
} 

template OEntitiesRest(string entityName, string entitiesName) {
  const char[] OEntitiesRest = `
  DBUS`~entityName~`[] all() {
    DBUS`~entityName~`[] results;
    foreach(id, entity; _entities) {
      if (entity.currentVersion) results ~= entity;
    } 
    return results;
  }
  size_t count() { return all.length; }
  DBUS`~entityName~` get(string _id) { 
    DBUS`~entityName~` result;

    result = new DBUS`~entityName~`;

    return result;
  }
  DBUS`~entityName~`[] versions(string _id) { 
    DBUS`~entityName~`[] results;
    foreach(id, entity; _entities) {
      if (entity.id == UUID(_id)) results ~= entity;
    } 
    return results;
  }

  bool exists(string _id) {
    foreach(id, entity; _entities) {
      if (entity.id == UUID(_id)) return true;
    } 
    return false;
  }

	DBUS`~entityName~` create() {
    DBUS`~entityName~` result = new DBUS`~entityName~`;
    result.id = randomUUID;
    result.name = result.id.toString;
    _entities[result.id.toString] = result;
    return result;
  }

	DBUS`~entityName~` update(DBUS`~entityName~` entity) {
    _entities[entity.id.toString] = entity;
   return entity; 
  }
`;
} 

template OEntitiesInner(string entityName, string entitiesName) {
  const char[] OEntitiesInner = `
  DBUS`~entityName~`[string] _entities;
  
  DBUS`~entityName~` opIndex(UUID anId) { if (anId.toString in _entities) return _entities[anId.toString]; return null; };
  DBUS`~entityName~` opIndex(string anId) { if (anId in _entities) return _entities[anId]; 
    foreach(id, entity; _entities) if (entity.name == anId) return entity;
    return null;
  }`;
} 
