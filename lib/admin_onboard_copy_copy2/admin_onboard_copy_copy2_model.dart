import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'admin_onboard_copy_copy2_widget.dart' show AdminOnboardCopyCopy2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminOnboardCopyCopy2Model
    extends FlutterFlowModel<AdminOnboardCopyCopy2Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;
  // State field(s) for Recruitersfirstname widget.
  FocusNode? recruitersfirstnameFocusNode;
  TextEditingController? recruitersfirstnameTextController;
  String? Function(BuildContext, String?)?
      recruitersfirstnameTextControllerValidator;
  // State field(s) for companyCity widget.
  FocusNode? companyCityFocusNode;
  TextEditingController? companyCityTextController;
  String? Function(BuildContext, String?)? companyCityTextControllerValidator;
  // State field(s) for companyAddress widget.
  FocusNode? companyAddressFocusNode;
  TextEditingController? companyAddressTextController;
  String? Function(BuildContext, String?)?
      companyAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
    recruitersfirstnameFocusNode?.dispose();
    recruitersfirstnameTextController?.dispose();

    companyCityFocusNode?.dispose();
    companyCityTextController?.dispose();

    companyAddressFocusNode?.dispose();
    companyAddressTextController?.dispose();
  }
}
