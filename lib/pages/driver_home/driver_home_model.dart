import '/components/driver_webnav/driver_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'driver_home_widget.dart' show DriverHomeWidget;
import 'package:flutter/material.dart';

class DriverHomeModel extends FlutterFlowModel<DriverHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DriverWebnav component.
  late DriverWebnavModel driverWebnavModel;
  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    driverWebnavModel = createModel(context, () => DriverWebnavModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    driverWebnavModel.dispose();
    mainLogoSmallModel.dispose();
  }
}
