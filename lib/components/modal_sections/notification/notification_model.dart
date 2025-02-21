import '/components/modal_sections/nofications_main/nofications_main_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';

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
