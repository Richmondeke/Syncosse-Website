import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/driver_webnav/driver_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/components/selecter_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_language_selector.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'main_settings_widget.dart' show MainSettingsWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainSettingsModel extends FlutterFlowModel<MainSettingsWidget> {
  ///  Local state fields for this page.

  bool personalinfo = true;

  bool license = false;

  bool experience = false;

  bool background = false;

  bool availability = false;

  bool additionalinfo = false;

  String pagenav = 'Personal';

  List<String> approvals = [];
  void addToApprovals(String item) => approvals.add(item);
  void removeFromApprovals(String item) => approvals.remove(item);
  void removeAtIndexFromApprovals(int index) => approvals.removeAt(index);
  void insertAtIndexInApprovals(int index, String item) =>
      approvals.insert(index, item);
  void updateApprovalsAtIndex(int index, Function(String) updateFn) =>
      approvals[index] = updateFn(approvals[index]);

  List<String> addcert = [];
  void addToAddcert(String item) => addcert.add(item);
  void removeFromAddcert(String item) => addcert.remove(item);
  void removeAtIndexFromAddcert(int index) => addcert.removeAt(index);
  void insertAtIndexInAddcert(int index, String item) =>
      addcert.insert(index, item);
  void updateAddcertAtIndex(int index, Function(String) updateFn) =>
      addcert[index] = updateFn(addcert[index]);

  bool selected = false;

  List<String> vehicelesoperated = [];
  void addToVehicelesoperated(String item) => vehicelesoperated.add(item);
  void removeFromVehicelesoperated(String item) =>
      vehicelesoperated.remove(item);
  void removeAtIndexFromVehicelesoperated(int index) =>
      vehicelesoperated.removeAt(index);
  void insertAtIndexInVehicelesoperated(int index, String item) =>
      vehicelesoperated.insert(index, item);
  void updateVehicelesoperatedAtIndex(int index, Function(String) updateFn) =>
      vehicelesoperated[index] = updateFn(vehicelesoperated[index]);

  List<String> preferredvehicles = [];
  void addToPreferredvehicles(String item) => preferredvehicles.add(item);
  void removeFromPreferredvehicles(String item) =>
      preferredvehicles.remove(item);
  void removeAtIndexFromPreferredvehicles(int index) =>
      preferredvehicles.removeAt(index);
  void insertAtIndexInPreferredvehicles(int index, String item) =>
      preferredvehicles.insert(index, item);
  void updatePreferredvehiclesAtIndex(int index, Function(String) updateFn) =>
      preferredvehicles[index] = updateFn(preferredvehicles[index]);

  List<String> prefworkhours = [];
  void addToPrefworkhours(String item) => prefworkhours.add(item);
  void removeFromPrefworkhours(String item) => prefworkhours.remove(item);
  void removeAtIndexFromPrefworkhours(int index) =>
      prefworkhours.removeAt(index);
  void insertAtIndexInPrefworkhours(int index, String item) =>
      prefworkhours.insert(index, item);
  void updatePrefworkhoursAtIndex(int index, Function(String) updateFn) =>
      prefworkhours[index] = updateFn(prefworkhours[index]);

  List<String> languages = [];
  void addToLanguages(String item) => languages.add(item);
  void removeFromLanguages(String item) => languages.remove(item);
  void removeAtIndexFromLanguages(int index) => languages.removeAt(index);
  void insertAtIndexInLanguages(int index, String item) =>
      languages.insert(index, item);
  void updateLanguagesAtIndex(int index, Function(String) updateFn) =>
      languages[index] = updateFn(languages[index]);

  bool mobilenow = false;

  ///  State fields for stateful widgets in this page.

  // Model for DriverWebnav component.
  late DriverWebnavModel driverWebnavModel;
  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // State field(s) for Srusurname widget.
  FocusNode? srusurnameFocusNode;
  TextEditingController? srusurnameTextController;
  String? Function(BuildContext, String?)? srusurnameTextControllerValidator;
  // State field(s) for firstname widget.
  FocusNode? firstnameFocusNode;
  TextEditingController? firstnameTextController;
  String? Function(BuildContext, String?)? firstnameTextControllerValidator;
  // State field(s) for othername widget.
  FocusNode? othernameFocusNode;
  TextEditingController? othernameTextController;
  String? Function(BuildContext, String?)? othernameTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for personalphone widget.
  FocusNode? personalphoneFocusNode;
  TextEditingController? personalphoneTextController;
  String? Function(BuildContext, String?)? personalphoneTextControllerValidator;
  // State field(s) for emergencyphone widget.
  FocusNode? emergencyphoneFocusNode;
  TextEditingController? emergencyphoneTextController;
  String? Function(BuildContext, String?)?
      emergencyphoneTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for resaddress widget.
  FocusNode? resaddressFocusNode;
  TextEditingController? resaddressTextController;
  String? Function(BuildContext, String?)? resaddressTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for postalcode widget.
  FocusNode? postalcodeFocusNode;
  TextEditingController? postalcodeTextController;
  String? Function(BuildContext, String?)? postalcodeTextControllerValidator;
  // State field(s) for Licensenumber widget.
  FocusNode? licensenumberFocusNode;
  TextEditingController? licensenumberTextController;
  String? Function(BuildContext, String?)? licensenumberTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for Permittype widget.
  String? permittypeValue;
  FormFieldController<String>? permittypeValueController;
  // State field(s) for countryofissuance widget.
  String? countryofissuanceValue1;
  FormFieldController<String>? countryofissuanceValueController1;
  // Model for selecter component.
  late SelecterModel selecterModel;
  // State field(s) for drivingexperience widget.
  FocusNode? drivingexperienceFocusNode;
  TextEditingController? drivingexperienceTextController;
  String? Function(BuildContext, String?)?
      drivingexperienceTextControllerValidator;
  // State field(s) for countryofissuance widget.
  String? countryofissuanceValue2;
  FormFieldController<String>? countryofissuanceValueController2;
  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    driverWebnavModel = createModel(context, () => DriverWebnavModel());
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    selecterModel = createModel(context, () => SelecterModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    driverWebnavModel.dispose();
    adminWebnavModel.dispose();
    srusurnameFocusNode?.dispose();
    srusurnameTextController?.dispose();

    firstnameFocusNode?.dispose();
    firstnameTextController?.dispose();

    othernameFocusNode?.dispose();
    othernameTextController?.dispose();

    personalphoneFocusNode?.dispose();
    personalphoneTextController?.dispose();

    emergencyphoneFocusNode?.dispose();
    emergencyphoneTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    resaddressFocusNode?.dispose();
    resaddressTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    postalcodeFocusNode?.dispose();
    postalcodeTextController?.dispose();

    licensenumberFocusNode?.dispose();
    licensenumberTextController?.dispose();

    selecterModel.dispose();
    drivingexperienceFocusNode?.dispose();
    drivingexperienceTextController?.dispose();

    mainLogoSmallModel.dispose();
  }
}
