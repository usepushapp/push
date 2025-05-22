import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'update_password_widget.dart' show UpdatePasswordWidget;
import 'package:flutter/material.dart';

class UpdatePasswordModel extends FlutterFlowModel<UpdatePasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for currentPassword widget.
  FocusNode? currentPasswordFocusNode;
  TextEditingController? currentPasswordTextController;
  late bool currentPasswordVisibility;
  String? Function(BuildContext, String?)?
      currentPasswordTextControllerValidator;
  String? _currentPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Wrong password. Try again';
    }

    return null;
  }

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  String? _newPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter a new password';
    }

    return null;
  }

  // State field(s) for confirmNewPassword widget.
  FocusNode? confirmNewPasswordFocusNode;
  TextEditingController? confirmNewPasswordTextController;
  late bool confirmNewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordTextControllerValidator;
  String? _confirmNewPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password to continue';
    }

    return null;
  }

  // Stores action output result for [Custom Action - changePassword] action in updateAccount widget.
  bool? changePasswordResult;

  @override
  void initState(BuildContext context) {
    currentPasswordVisibility = false;
    currentPasswordTextControllerValidator =
        _currentPasswordTextControllerValidator;
    newPasswordVisibility = false;
    newPasswordTextControllerValidator = _newPasswordTextControllerValidator;
    confirmNewPasswordVisibility = false;
    confirmNewPasswordTextControllerValidator =
        _confirmNewPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    currentPasswordFocusNode?.dispose();
    currentPasswordTextController?.dispose();

    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmNewPasswordFocusNode?.dispose();
    confirmNewPasswordTextController?.dispose();
  }
}
