import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'emptystate_widget.dart' show EmptystateWidget;
import 'package:flutter/material.dart';

class EmptystateModel extends FlutterFlowModel<EmptystateWidget> {
  ///  State fields for stateful widgets in this component.

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
