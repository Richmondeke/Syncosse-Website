import '/backend/backend.dart';
import '/chat_groupwbubbles/chat_thread_component/chat_thread_component_widget.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'main_messages_driver_widget.dart' show MainMessagesDriverWidget;
import 'package:flutter/material.dart';

class MainMessagesDriverModel
    extends FlutterFlowModel<MainMessagesDriverWidget> {
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

  DocumentReference? chatref;

  ChatsRecord? chat;

  ///  State fields for stateful widgets in this page.

  // Model for AdminWebnav component.
  late AdminWebnavModel adminWebnavModel;
  // Model for chat_ThreadComponent component.
  late ChatThreadComponentModel chatThreadComponentModel;
  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    chatThreadComponentModel =
        createModel(context, () => ChatThreadComponentModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
    chatThreadComponentModel.dispose();
    mainLogoSmallModel.dispose();
  }
}
