module apps.scm.controllers.pages.index;

import apps.scm;
@safe:

class DSCMIndexPageController : DAPPPageController {
  mixin(ControllerThis!("SCMIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(SCMIndexView(this));
  }
}
mixin(ControllerCalls!("SCMIndexPageController"));
