module uim.business.models.attribute;

import uim.business;

@safe class DBUSAttribute : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSAttribute() { return new DBUSAttribute; }
auto BUSAttribute(UUID newId, string newName) { return new DBUSAttribute(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSAttributes {
  mixin(IEIEntitiesRest!("Attribute", "Attributes"));
}

@safe class DBUSAttributes : IBUSAttributes {
  mixin(OEntitiesInner!("Attribute", "Attributes"));
  mixin(OEntitiesRest!("Attribute", "Attributes"));
}
