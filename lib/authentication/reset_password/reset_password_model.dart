import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for resetEmail widget.
  FocusNode? resetEmailFocusNode;
  TextEditingController? resetEmailTextController;
  String? Function(BuildContext, String?)? resetEmailTextControllerValidator;
  String? _resetEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter your account email to reset password.';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Enter your correct email address';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    resetEmailTextControllerValidator = _resetEmailTextControllerValidator;
  }

  @override
  void dispose() {
    resetEmailFocusNode?.dispose();
    resetEmailTextController?.dispose();
  }
}
