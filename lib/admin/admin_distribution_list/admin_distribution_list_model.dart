import '/flutter_flow/flutter_flow_util.dart';
import 'admin_distribution_list_widget.dart' show AdminDistributionListWidget;
import 'package:flutter/material.dart';

class AdminDistributionListModel
    extends FlutterFlowModel<AdminDistributionListWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
