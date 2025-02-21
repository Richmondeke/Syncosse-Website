import '/components/modal_sections/job_details/job_details_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'job_details2_widget.dart' show JobDetails2Widget;
import 'package:flutter/material.dart';

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
