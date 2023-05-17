module apps.scm;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import uim.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.scm.controllers;
  import apps.scm.helpers;
  import apps.scm.tests;
  import apps.scm.views;
}

DApp scmApp;
static this() {
  scmApp = App
    .name("scmApp")
    .rootPath("/apps/scm")
    .addRoute(Route("", HTTPMethod.GET, SCMIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, SCMIndexPageController));
}