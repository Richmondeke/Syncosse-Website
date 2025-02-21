import '/backend/backend.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'admin_interviews_widget.dart' show AdminInterviewsWidget;
import 'package:flutter/material.dart';

class AdminInterviewsModel extends FlutterFlowModel<AdminInterviewsWidget> {
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
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap1 = {};
  List<ApplicationsRecord> get checkboxCheckedItems1 =>
      checkboxValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  ChatsRecord? updatedChatThreadint;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChatsRecord? newChatThr;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  ChatsRecord? updatedChatThread;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChatsRecord? newChatThread;
  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap2 = {};
  List<ApplicationsRecord> get checkboxCheckedItems2 =>
      checkboxValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap3 = {};
  List<ApplicationsRecord> get checkboxCheckedItems3 =>
      checkboxValueMap3.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap4 = {};
  List<ApplicationsRecord> get checkboxCheckedItems4 =>
      checkboxValueMap4.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  ChatsRecord? updatedChatThreadintr;
  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  ChatsRecord? newChatT;
  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap5 = {};
  List<ApplicationsRecord> get checkboxCheckedItems5 =>
      checkboxValueMap5.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for Checkbox widget.
  Map<ApplicationsRecord, bool> checkboxValueMap6 = {};
  List<ApplicationsRecord> get checkboxCheckedItems6 =>
      checkboxValueMap6.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // Model for main_Logo_Small component.
  late MainLogoSmallModel mainLogoSmallModel;

  @override
  void initState(BuildContext context) {
    adminWebnavModel = createModel(context, () => AdminWebnavModel());
    mainLogoSmallModel = createModel(context, () => MainLogoSmallModel());
  }

  @override
  void dispose() {
    adminWebnavModel.dispose();
    tabBarController?.dispose();
    mainLogoSmallModel.dispose();
  }
}
