import '/backend/backend.dart';
import '/components/modal_sections/job_details/job_details_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'modaljobs_widget.dart' show ModaljobsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModaljobsModel extends FlutterFlowModel<ModaljobsWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  ///  State fields for stateful widgets in this component.

  // Model for jobdetails.
  late JobDetailsModel jobdetailsModel;

  @override
  void initState(BuildContext context) {
    jobdetailsModel = createModel(context, () => JobDetailsModel());
  }

  @override
  void dispose() {
    jobdetailsModel.dispose();
  }
}
