import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'billboards_widget.dart' show BillboardsWidget;
import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class BillboardsModel extends FlutterFlowModel<BillboardsWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchBillboards widget.
  FocusNode? searchBillboardsFocusNode;
  TextEditingController? searchBillboardsTextController;
  String? Function(BuildContext, String?)?
      searchBillboardsTextControllerValidator;
  List<BillboardsRecord> simpleSearchResults = [];
  // State field(s) for BillboardChoiceChips widget.
  FormFieldController<List<String>>? billboardChoiceChipsValueController;
  String? get billboardChoiceChipsValue =>
      billboardChoiceChipsValueController?.value?.firstOrNull;
  set billboardChoiceChipsValue(String? val) =>
      billboardChoiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for ListViewMain widget.

  PagingController<DocumentSnapshot?, BillboardsRecord>?
      listViewMainPagingController;
  Query? listViewMainPagingQuery;
  List<StreamSubscription?> listViewMainStreamSubscriptions = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchBillboardsFocusNode?.dispose();
    searchBillboardsTextController?.dispose();

    listViewMainStreamSubscriptions.forEach((s) => s?.cancel());
    listViewMainPagingController?.dispose();
  }

  /// Additional helper methods.
  PagingController<DocumentSnapshot?, BillboardsRecord>
      setListViewMainController(
    Query query, {
    DocumentReference<Object?>? parent,
  }) {
    listViewMainPagingController ??=
        _createListViewMainController(query, parent);
    if (listViewMainPagingQuery != query) {
      listViewMainPagingQuery = query;
      listViewMainPagingController?.refresh();
    }
    return listViewMainPagingController!;
  }

  PagingController<DocumentSnapshot?, BillboardsRecord>
      _createListViewMainController(
    Query query,
    DocumentReference<Object?>? parent,
  ) {
    final controller = PagingController<DocumentSnapshot?, BillboardsRecord>(
        firstPageKey: null);
    return controller
      ..addPageRequestListener(
        (nextPageMarker) => queryBillboardsRecordPage(
          queryBuilder: (_) => listViewMainPagingQuery ??= query,
          nextPageMarker: nextPageMarker,
          streamSubscriptions: listViewMainStreamSubscriptions,
          controller: controller,
          pageSize: 15,
          isStream: true,
        ),
      );
  }
}
