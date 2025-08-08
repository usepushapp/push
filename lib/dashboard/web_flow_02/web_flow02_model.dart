import '/dashboard/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'web_flow02_widget.dart' show WebFlow02Widget;
import 'package:flutter/material.dart';

class WebFlow02Model extends FlutterFlowModel<WebFlow02Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
  }
}
