module uim.business.models.attclass;

import uim.business;

@safe class DBUSAttclass : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
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
  mixin(OEntitiesInner!("Attclass", "Attclasses"));
  mixin(OEntitiesRest!("Attclass", "Attclasses"));
}

