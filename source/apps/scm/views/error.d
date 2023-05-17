module apps.scm.views.error;

import apps.scm;
@safe:

class DSCMErrorView : DView {
  mixin(ViewThis!("SCMErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DSCMErrorView~":DSCMErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Scm -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("SCMErrorView"));
