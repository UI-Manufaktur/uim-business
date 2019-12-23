module uim.business;

public import std.stdio;
public import std.string;
public import std.uuid;

public import vibe.vibe;
public import uim.business.mixins;
public import uim.business.object_;
public import uim.business.store;

public import uim.business.base;
public import uim.business.common;
public import uim.business.models;
public import uim.business.companies;
public import uim.business.customers;
public import uim.business.documents;
public import uim.business.folders;
public import uim.business.grundschutz;
public import uim.business.invoices;
public import uim.business.opportunities;
public import uim.business.orders;
public import uim.business.products;
public import uim.business.projects;
public import uim.business.quotes;
public import uim.business.sales;
public import uim.business.security;
public import uim.business.services;
public import uim.business.tasks;

version (Demo) { enum restPath = "/api/demo/"; }
else { enum restPath = "/api/v19/"; }



static this() {

}