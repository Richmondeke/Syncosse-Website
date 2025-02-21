import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_job1_copy_widget.dart' show CreateJob1CopyWidget;
import 'package:flutter/material.dart';

class CreateJob1CopyModel extends FlutterFlowModel<CreateJob1CopyWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;
  // State field(s) for firstname widget.
  FocusNode? firstnameFocusNode;
  TextEditingController? firstnameTextController;
  String? Function(BuildContext, String?)? firstnameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    mainLogoSmallModel.dispose();
    firstnameFocusNode?.dispose();
    firstnameTextController?.dispose();
  }
}
