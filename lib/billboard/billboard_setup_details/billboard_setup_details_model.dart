import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'billboard_setup_details_widget.dart' show BillboardSetupDetailsWidget;
import 'package:flutter/material.dart';

class BillboardSetupDetailsModel
    extends FlutterFlowModel<BillboardSetupDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for campaignTitle widget.
  FocusNode? campaignTitleFocusNode;
  TextEditingController? campaignTitleTextController;
  String? Function(BuildContext, String?)? campaignTitleTextControllerValidator;
  String? _campaignTitleTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campaign Title is required';
    }

    return null;
  }

  // State field(s) for campaignDescription widget.
  FocusNode? campaignDescriptionFocusNode;
  TextEditingController? campaignDescriptionTextController;
  String? Function(BuildContext, String?)?
      campaignDescriptionTextControllerValidator;

  @override
  void initState(BuildContext context) {
    campaignTitleTextControllerValidator =
        _campaignTitleTextControllerValidator;
  }

  @override
  void dispose() {
    campaignTitleFocusNode?.dispose();
    campaignTitleTextController?.dispose();

    campaignDescriptionFocusNode?.dispose();
    campaignDescriptionTextController?.dispose();
  }
}
