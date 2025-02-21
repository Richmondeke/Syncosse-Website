import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'jobs_card_admin_widget.dart' show JobsCardAdminWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
