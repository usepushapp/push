import '/flutter_flow/flutter_flow_util.dart';
import 'new_push_name_widget.dart' show NewPushNameWidget;
import 'package:flutter/material.dart';

class NewPushNameModel extends FlutterFlowModel<NewPushNameWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for pushName widget.
  FocusNode? pushNameFocusNode;
  TextEditingController? pushNameTextController;
  String? Function(BuildContext, String?)? pushNameTextControllerValidator;
  String? _pushNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Push name is required';
    }

    if (val.length > 30) {
      return 'Max 30 character exceeded.';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    pushNameTextControllerValidator = _pushNameTextControllerValidator;
  }

  @override
  void dispose() {
    pushNameFocusNode?.dispose();
    pushNameTextController?.dispose();
  }
}
