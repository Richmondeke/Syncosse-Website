import '/components/modal_sections/schedulemodal/schedulemodal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'interviews_widget.dart' show InterviewsWidget;
import 'package:flutter/material.dart';

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
