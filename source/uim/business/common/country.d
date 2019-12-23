module uim.business.common.country;

import uim.business;

@safe class DBUSCountry : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSCountry() { return new DBUSCountry; }
auto BUSCountry(UUID newId, string newName) { return new DBUSCountry(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSCountries {
  mixin(IEIEntitiesRest!("Country", "Countries"));
}

@safe class DBUSCountries : IBUSCountries {
  mixin(OEntitiesInner!("Country", "Countries"));
  mixin(OEntitiesRest!("Country", "Countries"));
}
/*

*/