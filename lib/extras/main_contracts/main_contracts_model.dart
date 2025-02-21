import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import 'main_contracts_widget.dart' show MainContractsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
