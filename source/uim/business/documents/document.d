module uim.business.documents.document;

import uim.business;

@safe class DBUSDocument : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSDocument() { return new DBUSDocument; }
auto BUSDocument(UUID newId, string newName) { return new DBUSDocument(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSDocuments {
  mixin(IEIEntitiesRest!("Document", "Documents"));
}

@safe class DBUSDocuments : IBUSDocuments {
  mixin(OEntitiesInner!("Document", "Documents"));
  mixin(OEntitiesRest!("Document", "Documents"));
}
