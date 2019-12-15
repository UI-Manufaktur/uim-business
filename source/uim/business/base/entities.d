module uim.business.base.entities;

import uim.business;

template IEntitiesFragment(string entityName, string entitiesName) {
  const char[] IEntitiesFragment = `
  @path("`~toLower(entitiesName)~`")
  @method(HTTPMethod.GET)
  DBUS`~capitalize(entityName)~`[] all();

	@path("`~toLower(entitiesName)~`/count")
	@method(HTTPMethod.GET)
	size_t count();

  @path("`~toLower(entitiesName)~`/:id")
  @method(HTTPMethod.GET)
  DBUS`~capitalize(entityName)~` get(string _id);

  @path("`~toLower(entitiesName)~`/:id/versions")
  @method(HTTPMethod.GET)
  DBUS`~capitalize(entityName)~`[] versions(string _id);

  @path("`~toLower(entitiesName)~`/exists/:id")
	@method(HTTPMethod.GET)
	bool exists(string _id);

	@method(HTTPMethod.POST)
	@path("/create")
	DBUS`~capitalize(entityName)~` create(DBUS`~capitalize(entityName)~`  entity);	

	@path("/update")
	@method(HTTPMethod.PUT)
	DBUS`~capitalize(entityName)~` update(DBUS`~capitalize(entityName)~` entity);	
`;
} 