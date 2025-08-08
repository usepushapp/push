import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'billboard_filter_widget.dart' show BillboardFilterWidget;
import 'package:flutter/material.dart';

class BillboardFilterModel extends FlutterFlowModel<BillboardFilterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for categories widget.
  String? categoriesValue;
  FormFieldController<String>? categoriesValueController;
  // State field(s) for locations widget.
  String? locationsValue;
  FormFieldController<String>? locationsValueController;
  // State field(s) for prices widget.
  String? pricesValue;
  FormFieldController<String>? pricesValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
