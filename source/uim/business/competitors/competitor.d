module uim.business.Competitory.Competitor;

import uim.business;

@safe class DBUSCompetitor : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
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
  mixin(OEntitiesInner!("Competitor", "Competitors"));
  mixin(OEntitiesRest!("Competitor", "Competitors"));
}
