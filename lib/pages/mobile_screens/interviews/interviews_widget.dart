import '/backend/backend.dart';
import '/components/modal_sections/schedulemodal/schedulemodal_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'interviews_model.dart';
export 'interviews_model.dart';

class InterviewsWidget extends StatefulWidget {
  const InterviewsWidget({
    super.key,
    this.user,
    this.jobPosting,
    this.applicstions,
  });

  final UsersRecord? user;
  final JobPostingRecord? jobPosting;

  /// applicstions
  final ApplicationsRecord? applicstions;

  static String routeName = 'Interviews';
  static String routePath = 'interviews';

  @override
  State<InterviewsWidget> createState() => _InterviewsWidgetState();
}

class _InterviewsWidgetState extends State<InterviewsWidget> {
  late InterviewsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InterviewsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Interviews'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              logFirebaseEvent('INTERVIEWS_arrow_back_rounded_ICN_ON_TAP');
              context.pop();
            },
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.schedulemodalModel,
            updateCallback: () => safeSetState(() {}),
            child: SchedulemodalWidget(
              driverprofile: widget!.user,
              jobPosting: widget!.jobPosting,
              driverapplication: widget!.applicstions,
            ),
          ),
        ),
      ),
    );
  }
}
