module uim.business.folders.folder;

import uim.business;

@safe class DBUSFolder : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSFolder() { return new DBUSFolder; }
auto BUSFolder(UUID newId, string newName) { return new DBUSFolder(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSFolders {
  mixin(IEIEntitiesRest!("Folder", "Folders"));
}

@safe class DBUSFolders : IBUSFolders {
  mixin(OEntitiesInner!("Folder", "Folders"));
  mixin(OEntitiesRest!("Folder", "Folders"));
}

/*

Properties
Name	Type	Description
Name	string	The name of the Folder.
Documents	CdmDocumentCollection	The child documents of the Folder.
ChildFolders	CdmFolderCollection	The direct children of the Folder.
AtCorpusPath	string	The corpus path of the Folder.
Methods
Name	Description	Return Type
FetchObjectDefinition<T>(ResolveOptions)	See CdmObject.FetchObjectDefinition<T>(...).	T
GetName()	See CdmObjectDefinition.GetName().	string
IsDerivedFrom(string, ResolveOptions)	See CdmObject.IsDerivedFrom(...).	bool
Copy(ResolveOptions)	See CdmObject.Copy(...).	CdmObject
Validate()	See CdmObject.Validate().	bool

*/