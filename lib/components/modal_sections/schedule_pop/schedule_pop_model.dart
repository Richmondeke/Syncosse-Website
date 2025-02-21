import '/backend/backend.dart';
import '/components/modal_sections/schedulemodal/schedulemodal_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'schedule_pop_widget.dart' show SchedulePopWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
