module apps.scm.controllers.pages.error;

import apps.scm;
@safe:

class DSCMErrorPageController : DAPPPageController {
  mixin(ControllerThis!("SCMErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(SCMErrorView(this));
  }
}
mixin(ControllerCalls!("SCMErrorPageController"));
