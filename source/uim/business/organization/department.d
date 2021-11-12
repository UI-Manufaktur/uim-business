module uim.business.organization.department;

import uim.business;

@safe class DBUSDepartment : DBUSObject {
  mixin(EntityThis!());
}
auto BUSDepartment() { return new DBUSDepartment; }
auto BUSDepartment(UUID newId, string newName) { return new DBUSDepartment(newId, newName); }
unittest {
  // writeln();
}

@path(restPath)
interface IBUSDepartments {
  mixin(IEIEntitiesRest!("Department", "Departments"));
}

@safe class DBUSDepartments : IBUSDepartments {
  mixin(EntitiesThis!());
  mixin(OEntitiesInner!("Department", "Departments"));
  mixin(OEntitiesRest!("Department", "Departments"));
}

