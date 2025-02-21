import '/backend/backend.dart';
import '/components/modal_sections/schedulemodal/schedulemodal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'interviews_widget.dart' show InterviewsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InterviewsModel extends FlutterFlowModel<InterviewsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Schedulemodal component.
  late SchedulemodalModel schedulemodalModel;

  @override
  void initState(BuildContext context) {
    schedulemodalModel = createModel(context, () => SchedulemodalModel());
  }

  @override
  void dispose() {
    schedulemodalModel.dispose();
  }
}
