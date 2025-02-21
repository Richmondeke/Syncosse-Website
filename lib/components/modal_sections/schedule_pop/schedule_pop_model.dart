import '/components/modal_sections/schedulemodal/schedulemodal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'schedule_pop_widget.dart' show SchedulePopWidget;
import 'package:flutter/material.dart';

class SchedulePopModel extends FlutterFlowModel<SchedulePopWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  ///  State fields for stateful widgets in this component.

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
