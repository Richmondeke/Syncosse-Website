import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_control_widget.dart' show LoginControlWidget;
import 'package:flutter/material.dart';

class LoginControlModel extends FlutterFlowModel<LoginControlWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
  }
}
