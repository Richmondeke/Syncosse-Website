import '/backend/backend.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/components/user_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_home_widget.dart' show AdminHomeWidget;
import 'package:flutter/material.dart';

class AdminHomeModel extends FlutterFlowModel<AdminHomeWidget> {
  ///  Local state fields for this page.
  /// selected user
  UsersRecord? selecteduser;

  int selectednav = 1;

  ///  State fields for stateful widgets in this page.

  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // Models for User dynamic component.
  late FlutterFlowDynamicModels<UserModel> userModels;
  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap1 = {};
  List<UsersRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap2 = {};
  List<UsersRecord> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap3 = {};
  List<UsersRecord> get checkboxCheckedItems3 => checkboxValueMap3.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap4 = {};
  List<UsersRecord> get checkboxCheckedItems4 => checkboxValueMap4.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Checkbox widget.
  Map<UsersRecord, bool> checkboxValueMap5 = {};
  List<UsersRecord> get checkboxCheckedItems5 => checkboxValueMap5.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    userModels = FlutterFlowDynamicModels(() => UserModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
    userModels.dispose();
    mainLogoSmallModel.dispose();
  }
}
