import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'personal_information_widget.dart' show PersonalInformationWidget;
import 'package:flutter/material.dart';

class PersonalInformationModel
    extends FlutterFlowModel<PersonalInformationWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_onboardingPhoto = false;
  FFUploadedFile uploadedLocalFile_onboardingPhoto =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_onboardingPhoto = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  // State field(s) for phone widget.
  FocusNode? phoneFocusNode;
  TextEditingController? phoneTextController;
  String? Function(BuildContext, String?)? phoneTextControllerValidator;
  // State field(s) for signupEmail widget.
  FocusNode? signupEmailFocusNode;
  TextEditingController? signupEmailTextController;
  String? Function(BuildContext, String?)? signupEmailTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    phoneFocusNode?.dispose();
    phoneTextController?.dispose();

    signupEmailFocusNode?.dispose();
    signupEmailTextController?.dispose();
  }
}
