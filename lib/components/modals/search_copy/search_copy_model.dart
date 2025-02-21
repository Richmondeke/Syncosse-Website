import '/components/interviewstatus/interviewstatus_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'search_copy_widget.dart' show SearchCopyWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
