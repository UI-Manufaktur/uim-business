module uim.business.customers.customer;

import uim.business;

@safe class DBUSCustomer : DBUSObject {
  this() { super(); }
  this(UUID newId, string newName) { super(newId, newName); }
}
auto BUSCustomer() { return new DBUSCustomer; }
auto BUSCustomer(UUID newId, string newName) { return new DBUSCustomer(newId, newName); }
unittest {
  // writeln();
}


@path(restPath)
interface IBUSCustomers {
  mixin(IEIEntitiesRest!("Customer", "Customers"));
}

@safe class DBUSCustomers : IBUSCustomers {
  mixin(OEntitiesInner!("Customer", "Customers"));
  mixin(OEntitiesRest!("Customer", "Customers"));
}
