module uim.business.models.objclass;

import uim.business;

@safe class DBUSObjclass : DBUSObject {
  mixin(EntityThis!());
}
auto BUSObjclass() { return new DBUSObjclass; }
auto BUSObjclass(UUID newId, string newName) { return new DBUSObjclass(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSObjclasses {
  mixin(IEIEntitiesRest!("Objclass", "Objclasses"));
}

@safe class DBUSObjclasses : IBUSObjclasses {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Objclass", "Objclasses"));
  mixin(OEntitiesRest!("Objclass", "Objclasses"));
}
