import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'content_widget.dart' show ContentWidget;
import 'package:flutter/material.dart';

class ContentModel extends FlutterFlowModel<ContentWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for articleLink widget.
  FocusNode? articleLinkFocusNode;
  TextEditingController? articleLinkTextController;
  String? Function(BuildContext, String?)? articleLinkTextControllerValidator;
  String? _articleLinkTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Article link is required';
    }

    return null;
  }

  // State field(s) for featuredImageLink widget.
  FocusNode? featuredImageLinkFocusNode;
  TextEditingController? featuredImageLinkTextController;
  String? Function(BuildContext, String?)?
      featuredImageLinkTextControllerValidator;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    articleLinkTextControllerValidator = _articleLinkTextControllerValidator;
  }

  @override
  void dispose() {
    articleLinkFocusNode?.dispose();
    articleLinkTextController?.dispose();

    featuredImageLinkFocusNode?.dispose();
    featuredImageLinkTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();
  }
}
