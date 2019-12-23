module uim.business.models.objclass;

import uim.business;

@safe class DBUSObjclass : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
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
  mixin(OEntitiesInner!("Objclass", "Objclasses"));
  mixin(OEntitiesRest!("Objclass", "Objclasses"));
}
