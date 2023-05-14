module apps.scm;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-scm libraries
  import apps.scm.controllers;
  import apps.scm.views;
}
