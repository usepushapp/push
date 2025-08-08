import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile_setup_widget.dart' show ProfileSetupWidget;
import 'package:flutter/material.dart';

class ProfileSetupModel extends FlutterFlowModel<ProfileSetupWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_profilePhoto = false;
  FFUploadedFile uploadedLocalFile_profilePhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_profilePhoto = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Full name is required';
    }

    return null;
  }

  // State field(s) for country widget.
  final countryKey = GlobalKey();
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? countrySelectedOption;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  String? _countryTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Country is required';
    }
    if (val != countrySelectedOption) {
      return 'Please  enter your Country';
    }

    return null;
  }

  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    countryTextControllerValidator = _countryTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    countryFocusNode?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();
  }
}
