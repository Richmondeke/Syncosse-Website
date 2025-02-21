import '/components/modal_sections/nofications_main/nofications_main_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  Local state fields for this component.

  bool? showBack = false;

  ///  State fields for stateful widgets in this component.

  // Model for nofications_main component.
  late NoficationsMainModel noficationsMainModel;

  @override
  void initState(BuildContext context) {
    noficationsMainModel = createModel(context, () => NoficationsMainModel());
  }

  @override
  void dispose() {
    noficationsMainModel.dispose();
  }
}
