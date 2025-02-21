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
import 'admin_onboard_copy_widget.dart' show AdminOnboardCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminOnboardCopyModel extends FlutterFlowModel<AdminOnboardCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;
  // State field(s) for companyName widget.
  FocusNode? companyNameFocusNode;
  TextEditingController? companyNameTextController;
  String? Function(BuildContext, String?)? companyNameTextControllerValidator;
  // State field(s) for SelectIndustry widget.
  String? selectIndustryValue1;
  FormFieldController<String>? selectIndustryValueController1;
  // State field(s) for SelectIndustry widget.
  String? selectIndustryValue2;
  FormFieldController<String>? selectIndustryValueController2;
  // State field(s) for SelectIndustry widget.
  String? selectIndustryValue3;
  FormFieldController<String>? selectIndustryValueController3;
  // State field(s) for companyCity widget.
  FocusNode? companyCityFocusNode;
  TextEditingController? companyCityTextController;
  String? Function(BuildContext, String?)? companyCityTextControllerValidator;
  // State field(s) for companyAddress widget.
  FocusNode? companyAddressFocusNode;
  TextEditingController? companyAddressTextController;
  String? Function(BuildContext, String?)?
      companyAddressTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CompanyRecord? newcompany;

  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
    companyNameFocusNode?.dispose();
    companyNameTextController?.dispose();

    companyCityFocusNode?.dispose();
    companyCityTextController?.dispose();

    companyAddressFocusNode?.dispose();
    companyAddressTextController?.dispose();
  }
}
