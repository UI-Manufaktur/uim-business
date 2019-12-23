module uim.business.store;

import uim.business;

template StoreEntry(string entry) {
  const char[] StoreEntry = `
  protected DBUS`~entry.capitalize~` _`~entry~`;
  @property auto `~entry~`() { return _`~entry~`; }
  @property void `~entry~`(DBUS`~entry.capitalize~` new`~entry~`) { _`~entry~` = new`~entry~`; }
  `;
}

@safe class DBUSStore {
  this() {
    _customers = new DBUSCustomers;
    _invoices = new DBUSInvoices;
    _orders = new DBUSOrders;
  }

  mixin(StoreEntry!"attclasses");
  mixin(StoreEntry!"attributes");
  mixin(StoreEntry!"companies");
  mixin(StoreEntry!"customers");
  mixin(StoreEntry!"documents");
  mixin(StoreEntry!"folders");
  mixin(StoreEntry!"groups");
  mixin(StoreEntry!"invoices");
  mixin(StoreEntry!"objclasses");
  mixin(StoreEntry!"opportunities");
  mixin(StoreEntry!"orders");
  mixin(StoreEntry!"services");
  mixin(StoreEntry!"tasks");
  mixin(StoreEntry!"users");
} 
