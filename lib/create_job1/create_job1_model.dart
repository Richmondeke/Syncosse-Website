import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'create_job1_widget.dart' show CreateJob1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateJob1Model extends FlutterFlowModel<CreateJob1Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;
  // State field(s) for firstname widget.
  FocusNode? firstnameFocusNode;
  TextEditingController? firstnameTextController;
  String? Function(BuildContext, String?)? firstnameTextControllerValidator;
  // State field(s) for EnterLocation widget.
  FocusNode? enterLocationFocusNode;
  TextEditingController? enterLocationTextController;
  String? Function(BuildContext, String?)? enterLocationTextControllerValidator;
  // State field(s) for EnterSalary widget.
  FocusNode? enterSalaryFocusNode1;
  TextEditingController? enterSalaryTextController1;
  String? Function(BuildContext, String?)? enterSalaryTextController1Validator;
  // State field(s) for EnterSalary widget.
  FocusNode? enterSalaryFocusNode2;
  TextEditingController? enterSalaryTextController2;
  String? Function(BuildContext, String?)? enterSalaryTextController2Validator;
  // State field(s) for ContractType widget.
  String? contractTypeValue;
  FormFieldController<String>? contractTypeValueController;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  JobPostingRecord? newJob;

  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
    firstnameFocusNode?.dispose();
    firstnameTextController?.dispose();

    enterLocationFocusNode?.dispose();
    enterLocationTextController?.dispose();

    enterSalaryFocusNode1?.dispose();
    enterSalaryTextController1?.dispose();

    enterSalaryFocusNode2?.dispose();
    enterSalaryTextController2?.dispose();
  }
}
