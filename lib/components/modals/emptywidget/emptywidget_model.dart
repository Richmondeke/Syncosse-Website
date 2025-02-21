import '/components/emptystate/emptystate_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'emptywidget_widget.dart' show EmptywidgetWidget;
import 'package:flutter/material.dart';

class EmptywidgetModel extends FlutterFlowModel<EmptywidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for emptystate component.
  late EmptystateModel emptystateModel;

  @override
  void initState(BuildContext context) {
    emptystateModel = createModel(context, () => EmptystateModel());
  }

  @override
  void dispose() {
    emptystateModel.dispose();
  }
}
