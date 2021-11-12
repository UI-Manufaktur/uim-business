module uim.business.models.attclass;

import uim.business;

@safe class DBUSAttclass : DBUSObject {
  mixin(EntityThis!());
}
auto BUSAttclass() { return new DBUSAttclass; }
auto BUSAttclass(UUID newId, string newName) { return new DBUSAttclass(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSAttclasses {
  mixin(IEIEntitiesRest!("Attclass", "Attclasses"));
}

@safe class DBUSAttclasses : IBUSAttclasses {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Attclass", "Attclasses"));
  mixin(OEntitiesRest!("Attclass", "Attclasses"));
}

