module uim.business.mixins;

import uim.business;

template EntityThis() {
    const char[] EntityThis = `
    this() { super(); }
    this(UUID newId, string newName) { super(newId, newName); }
    this(DBUSStore newStore) { super(newStore); }
    this(DBUSStore newStore, UUID newId, string newName) { super(newStore, newId, newName); }
    `;
}

template EntitiesThis() {
    const char[] EntitiesThis = `
    this() { }
    this(DBUSStore newStore) { this(); _store = newStore; }
    DBUSStore _store;
    `;
}