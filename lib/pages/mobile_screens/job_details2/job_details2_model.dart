import '/backend/backend.dart';
import '/components/modal_sections/job_details/job_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'job_details2_widget.dart' show JobDetails2Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class JobDetails2Model extends FlutterFlowModel<JobDetails2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for job_Details component.
  late JobDetailsModel jobDetailsModel;

  @override
  void initState(BuildContext context) {
    jobDetailsModel = createModel(context, () => JobDetailsModel());
  }

  @override
  void dispose() {
    jobDetailsModel.dispose();
  }
}
