import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filtermodal_widget.dart' show FiltermodalWidget;
import 'package:flutter/material.dart';

class FiltermodalModel extends FlutterFlowModel<FiltermodalWidget> {
  ///  Local state fields for this component.

  bool searchmode = false;

  String searchtype = 'Location';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<JobPostingRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
