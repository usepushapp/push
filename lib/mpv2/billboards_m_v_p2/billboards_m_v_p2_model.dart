import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'billboards_m_v_p2_widget.dart' show BillboardsMVP2Widget;
import 'package:flutter/material.dart';

class BillboardsMVP2Model extends FlutterFlowModel<BillboardsMVP2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for BillboardChoiceChips widget.
  FormFieldController<List<String>>? billboardChoiceChipsValueController;
  String? get billboardChoiceChipsValue =>
      billboardChoiceChipsValueController?.value?.firstOrNull;
  set billboardChoiceChipsValue(String? val) =>
      billboardChoiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
