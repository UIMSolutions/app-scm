module apps.scm.views.index;

import apps.scm;
@safe:

class DSCMIndexView : DView {
  mixin(ViewThis!("SCMIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DSCMIndexView~":DSCMIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP scm -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("SCMIndexView"));
