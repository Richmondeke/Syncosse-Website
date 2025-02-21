import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/chat_groupwbubbles/empty_state_simple/empty_state_simple_widget.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/filtermodal/filtermodal_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/components/user_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'admin_home_widget.dart' show AdminHomeWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
