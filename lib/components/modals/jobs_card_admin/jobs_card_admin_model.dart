import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'jobs_card_admin_widget.dart' show JobsCardAdminWidget;
import 'package:flutter/material.dart';

class JobsCardAdminModel extends FlutterFlowModel<JobsCardAdminWidget> {
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
