import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_funding_widget.dart' show AccountFundingWidget;
import 'package:flutter/material.dart';

class AccountFundingModel extends FlutterFlowModel<AccountFundingWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;
  String? _amountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Enter deposit amount';
    }

    if (val.length < 4) {
      return 'Minimun Deposit is N1000';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Initialize Transaction)] action in Button widget.
  ApiCallResponse? apiResultjpv;

  @override
  void initState(BuildContext context) {
    amountTextControllerValidator = _amountTextControllerValidator;
  }

  @override
  void dispose() {
    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
