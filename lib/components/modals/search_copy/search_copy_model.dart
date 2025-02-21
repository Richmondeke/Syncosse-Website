import '/components/interviewstatus/interviewstatus_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_copy_widget.dart' show SearchCopyWidget;
import 'package:flutter/material.dart';

class SearchCopyModel extends FlutterFlowModel<SearchCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for interviewstatus component.
  late InterviewstatusModel interviewstatusModel;

  @override
  void initState(BuildContext context) {
    interviewstatusModel = createModel(context, () => InterviewstatusModel());
  }

  @override
  void dispose() {
    interviewstatusModel.dispose();
  }
}
