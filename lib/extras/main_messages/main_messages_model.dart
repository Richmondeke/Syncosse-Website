import '/components/admin_webnav/admin_webnav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_messages_widget.dart' show MainMessagesWidget;
import 'package:flutter/material.dart';

class MainMessagesModel extends FlutterFlowModel<MainMessagesWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> friendsList = [];
  void addToFriendsList(DocumentReference item) => friendsList.add(item);
  void removeFromFriendsList(DocumentReference item) =>
      friendsList.remove(item);
  void removeAtIndexFromFriendsList(int index) => friendsList.removeAt(index);
  void insertAtIndexInFriendsList(int index, DocumentReference item) =>
      friendsList.insert(index, item);
  void updateFriendsListAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      friendsList[index] = updateFn(friendsList[index]);

  ///  State fields for stateful widgets in this page.

  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
