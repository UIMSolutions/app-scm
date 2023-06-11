/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
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
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.scm.controllers;
  import apps.scm.helpers;
  import apps.scm.routers;
  import apps.scm.tests;
  import apps.scm.views;
}

static this() {
  AppRegistry.register("apps.scm",  
    App
    .name("scmApp")
    .rootPath("/apps/scm")
                       .importTranslations()
    .addRoute(Route("", HTTPMethod.GET, SCMIndexPageController))
    .addRoute(Route("/", HTTPMethod.GET, SCMIndexPageController)));
}
