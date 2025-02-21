import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/driver_webnav/driver_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'main_profile_page_widget.dart' show MainProfilePageWidget;
import 'package:flutter/material.dart';

class MainProfilePageModel extends FlutterFlowModel<MainProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DriverWebnav component.
  late DriverWebnavModel driverWebnavModel;
  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    driverWebnavModel = createModel(context, () => DriverWebnavModel());
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    driverWebnavModel.dispose();
    adminWebnavModel.dispose();
    mainLogoSmallModel.dispose();
  }
}
