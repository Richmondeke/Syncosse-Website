import '/components/modal_sections/nofications_main/nofications_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notifications_widget.dart' show NotificationsWidget;
import 'package:flutter/material.dart';

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
