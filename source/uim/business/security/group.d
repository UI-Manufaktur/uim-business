module uim.business.security.group;

import uim.business;

@safe class DBUSGroup : DBUSObject {
  mixin(EntityThis!());
}
auto BUSGroup() { return new DBUSGroup; }
auto BUSGroup(UUID newId, string newName) { return new DBUSGroup(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSGroups {
  mixin(IEIEntitiesRest!("Group", "Groups"));
}

@safe class DBUSGroups : IBUSGroups {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Group", "Groups"));
  mixin(OEntitiesRest!("Group", "Groups"));
}