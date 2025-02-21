import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'jobs_card_widget.dart' show JobsCardWidget;
import 'package:flutter/material.dart';

class JobsCardModel extends FlutterFlowModel<JobsCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel;

  @override
  void initState(BuildContext context) {
    jobscardDriverModel = createModel(context, () => JobscardDriverModel());
  }

  @override
  void dispose() {
    jobscardDriverModel.dispose();
  }
}
