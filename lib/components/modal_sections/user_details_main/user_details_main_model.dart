import '/backend/backend.dart';
import '/components/modal_sections/schedule_pop/schedule_pop_widget.dart';
import '/components/username/username_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'user_details_main_widget.dart' show UserDetailsMainWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserDetailsMainModel extends FlutterFlowModel<UserDetailsMainWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Username component.
  late UsernameModel usernameModel;

  @override
  void initState(BuildContext context) {
    usernameModel = createModel(context, () => UsernameModel());
  }

  @override
  void dispose() {
    usernameModel.dispose();
  }
}
