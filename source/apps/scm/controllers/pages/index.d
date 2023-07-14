module apps.scm.controllers.pages.index;

import apps.scm;
@safe:

class DIndexPageController : DPageController {
  mixin(ControllerThis!("IndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(SCMIndexView(this));
  }
}
mixin(ControllerCalls!("IndexPageController"));
