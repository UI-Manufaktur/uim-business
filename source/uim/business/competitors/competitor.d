module uim.business.Competitory.Competitor;

import uim.business;

@safe class DBUSCompetitor : DBUSObject {
  mixin(EntityThis!());
}
auto BUSCompetitor() { return new DBUSCompetitor; }
auto BUSCompetitor(UUID newId, string newName) { return new DBUSCompetitor(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSCompetitors {
  mixin(IEIEntitiesRest!("Competitor", "Competitors"));
}

@safe class DBUSCompetitors : IBUSCompetitors {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Competitor", "Competitors"));
  mixin(OEntitiesRest!("Competitor", "Competitors"));
}
