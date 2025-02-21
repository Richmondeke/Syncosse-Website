import '/components/admin_webnav/admin_webnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'details_widget.dart' show DetailsWidget;
import 'package:flutter/material.dart';

class DetailsModel extends FlutterFlowModel<DetailsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
  }
}
