import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_job_postings_widget.dart' show AdminJobPostingsWidget;
import 'package:flutter/material.dart';

class AdminJobPostingsModel extends FlutterFlowModel<AdminJobPostingsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
    mainLogoSmallModel.dispose();
  }
}
