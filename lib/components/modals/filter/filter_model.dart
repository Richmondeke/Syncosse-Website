import '/components/filtermodal/filtermodal_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'filter_widget.dart' show FilterWidget;
import 'package:flutter/material.dart';

class FilterModel extends FlutterFlowModel<FilterWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for filtermodal component.
  late FiltermodalModel filtermodalModel;

  @override
  void initState(BuildContext context) {
    filtermodalModel = createModel(context, () => FiltermodalModel());
  }

  @override
  void dispose() {
    filtermodalModel.dispose();
  }
}
