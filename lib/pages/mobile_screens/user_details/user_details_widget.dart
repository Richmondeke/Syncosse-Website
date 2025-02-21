import '/backend/backend.dart';
import '/components/modal_sections/user_details_main/user_details_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_details_model.dart';
export 'user_details_model.dart';

class UserDetailsWidget extends StatefulWidget {
  const UserDetailsWidget({
    super.key,
    bool? showBack,
    this.user,
    this.userref,
    this.jobposting,
    this.applications,
  }) : this.showBack = showBack ?? true;

  final bool showBack;

  /// user
  final UsersRecord? user;

  /// userref
  final DocumentReference? userref;

  final JobPostingRecord? jobposting;
  final ApplicationsRecord? applications;

  static String routeName = 'userDetails';
  static String routePath = 'userDetails';

  @override
  State<UserDetailsWidget> createState() => _UserDetailsWidgetState();
}

class _UserDetailsWidgetState extends State<UserDetailsWidget> {
  late UserDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserDetailsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'userDetails'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
        child: wrapWithModel(
          model: _model.userDetailsMainModel,
          updateCallback: () => safeSetState(() {}),
          child: UserDetailsMainWidget(
            showBack: widget!.showBack,
            user: widget!.user,
            jobposting: widget!.jobposting,
            applications: widget!.applications,
          ),
        ),
      ),
    );
  }
}
