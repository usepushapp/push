import '/flutter_flow/flutter_flow_util.dart';
import 'funding_widget.dart' show FundingWidget;
import 'package:flutter/material.dart';

class FundingModel extends FlutterFlowModel<FundingWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  String? _amountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for currency widget.
  FocusNode? currencyFocusNode;
  TextEditingController? currencyTextController;
  String? Function(BuildContext, String?)? currencyTextControllerValidator;
  String? _currencyTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
    amountTextControllerValidator = _amountTextControllerValidator;
    currencyTextControllerValidator = _currencyTextControllerValidator;
  }

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();

    currencyFocusNode?.dispose();
    currencyTextController?.dispose();
  }
}
