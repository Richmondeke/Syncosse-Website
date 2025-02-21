import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_contracts_widget.dart' show MainContractsWidget;
import 'package:flutter/material.dart';

class MainContractsModel extends FlutterFlowModel<MainContractsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel1;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel2;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel3;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel4;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel5;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel6;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel7;
  // Model for JobscardDriver component.
  late JobscardDriverModel jobscardDriverModel8;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    jobscardDriverModel1 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel2 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel3 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel4 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel5 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel6 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel7 = createModel(context, () => JobscardDriverModel());
    jobscardDriverModel8 = createModel(context, () => JobscardDriverModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
    jobscardDriverModel1.dispose();
    jobscardDriverModel2.dispose();
    jobscardDriverModel3.dispose();
    jobscardDriverModel4.dispose();
    jobscardDriverModel5.dispose();
    jobscardDriverModel6.dispose();
    jobscardDriverModel7.dispose();
    jobscardDriverModel8.dispose();
  }
}
