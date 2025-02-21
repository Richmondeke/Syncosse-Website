import '/components/username/username_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_details_main_widget.dart' show UserDetailsMainWidget;
import 'package:flutter/material.dart';

class UserDetailsMainModel extends FlutterFlowModel<UserDetailsMainWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for Username component.
  late UsernameModel usernameModel;

  @override
  void initState(BuildContext context) {
    usernameModel = createModel(context, () => UsernameModel());
  }

  @override
  void dispose() {
    usernameModel.dispose();
  }
}
