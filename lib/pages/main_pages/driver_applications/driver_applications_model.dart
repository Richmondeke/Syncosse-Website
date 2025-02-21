import '/backend/backend.dart';
import '/components/driver_webnav/driver_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'driver_applications_widget.dart' show DriverApplicationsWidget;
import 'package:flutter/material.dart';

class DriverApplicationsModel
    extends FlutterFlowModel<DriverApplicationsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for DriverWebnav component.
  late DriverWebnavModel driverWebnavModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap1 = {};
  List<ApplicationsRecord> get checkboxCheckedItems1 =>
      checkboxValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap2 = {};
  List<ApplicationsRecord> get checkboxCheckedItems2 =>
      checkboxValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap3 = {};
  List<ApplicationsRecord> get checkboxCheckedItems3 =>
      checkboxValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap4 = {};
  List<ApplicationsRecord> get checkboxCheckedItems4 =>
      checkboxValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap5 = {};
  List<ApplicationsRecord> get checkboxCheckedItems5 =>
      checkboxValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap6 = {};
  List<ApplicationsRecord> get checkboxCheckedItems6 =>
      checkboxValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap7 = {};
  List<ApplicationsRecord> get checkboxCheckedItems7 =>
      checkboxValueMap7.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap8 = {};
  List<ApplicationsRecord> get checkboxCheckedItems8 =>
      checkboxValueMap8.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap9 = {};
  List<ApplicationsRecord> get checkboxCheckedItems9 =>
      checkboxValueMap9.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap10 = {};
  List<ApplicationsRecord> get checkboxCheckedItems10 =>
      checkboxValueMap10.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap11 = {};
  List<ApplicationsRecord> get checkboxCheckedItems11 =>
      checkboxValueMap11.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap12 = {};
  List<ApplicationsRecord> get checkboxCheckedItems12 =>
      checkboxValueMap12.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap13 = {};
  List<ApplicationsRecord> get checkboxCheckedItems13 =>
      checkboxValueMap13.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap14 = {};
  List<ApplicationsRecord> get checkboxCheckedItems14 =>
      checkboxValueMap14.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap15 = {};
  List<ApplicationsRecord> get checkboxCheckedItems15 =>
      checkboxValueMap15.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    mainLogoSmallModel.dispose();
  }
}
