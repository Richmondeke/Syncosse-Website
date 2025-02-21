import '/components/modal_sections/nofications_main/nofications_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsModel extends FlutterFlowModel<NotificationsWidget> {
  ///  State fields for stateful widgets in this page.

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
