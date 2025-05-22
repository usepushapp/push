import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for signupEmail widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;
  String? _signupEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required to Sign Up';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  // State field(s) for signupPassword widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  String? _signupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Create a password to SignUp';
    }

    if (val.length < 5) {
      return 'Minimum of 5 Characters is required';
    }
    if (val.length > 20) {
      return 'Password cannot exceed 20 Characters';
    }

    return null;
  }

  // State field(s) for ref widget.
  FocusNode? refFocusNode;
  TextEditingController? refTextController;
  String? Function(BuildContext, String?)? refTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupEmailTextControllerValidator = _signupEmailTextControllerValidator;
    signupPasswordVisibility = false;
    signupPasswordTextControllerValidator =
        _signupPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    refFocusNode?.dispose();
    refTextController?.dispose();
  }
}
