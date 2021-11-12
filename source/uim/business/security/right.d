module uim.business.security.right;

import uim.business;

@safe class DBUSRight : DBUSObject {
    mixin(EntityThis!());
}
auto BUSRight() { return new DBUSRight; }
auto BUSRight(UUID newId, string newName) { return new DBUSRight(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSRights {
  mixin(IEIEntitiesRest!("Right", "Rights"));
}

@safe class DBUSRights : IBUSRights {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Right", "Rights"));
  mixin(OEntitiesRest!("Right", "Rights"));
}