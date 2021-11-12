module uim.business.store;

import uim.business;

template StoreEntry(string entry) {
  const char[] StoreEntry = `
  protected DBUS`~entry.capitalize~` _`~entry~`;
  @safe @property auto `~entry~`() { return _`~entry~`; }
  @safe @property O `~entry~`(this O)(DBUS`~entry.capitalize~` newValue) { _`~entry~` = newValue; return cast(O)this; }
  `;
}

@safe class DBUSStore {
  this() {
    _attclasses = new DBUSAttclasses(this);
    _attributes = new DBUSAttributes(this);
    _companies = new DBUSCompanies(this);
    _customers = new DBUSCustomers(this);
    _documents = new DBUSDocuments(this);
    _folders = new DBUSFolders(this);
    _groups = new DBUSGroups(this);
    _invoices = new DBUSInvoices(this);
    _objclasses = new DBUSObjclasses(this);
    _opportunities = new DBUSOpportunities(this);
    // _orders = new DBUSOrders(this);
    // _tasks = new DBUSTasks(this);
    _users = new DBUSUsers(this);
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
  // mixin(StoreEntry!"opportunities");
  protected DBUSOpportunities _opportunities;
  @safe @property auto opportunities() { return _opportunities; }
  @safe @property O opportunities(this O)(DBUSOpportunities newValue) { _opportunities = newValue; return cast(O)this; }

  mixin(StoreEntry!"orders");
  mixin(StoreEntry!"services");
  mixin(StoreEntry!"tasks");
  mixin(StoreEntry!"users");
} 
