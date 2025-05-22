import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'push_details_widget.dart' show PushDetailsWidget;
import 'package:flutter/material.dart';

class PushDetailsModel extends FlutterFlowModel<PushDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pushName widget.
  FocusNode? pushNameFocusNode;
  TextEditingController? pushNameTextController;
  String? Function(BuildContext, String?)? pushNameTextControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    pushNameFocusNode?.dispose();
    pushNameTextController?.dispose();
  }
}
