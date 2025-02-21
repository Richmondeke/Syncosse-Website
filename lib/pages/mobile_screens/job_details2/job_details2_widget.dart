import '/backend/backend.dart';
import '/components/modal_sections/job_details/job_details_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'job_details2_model.dart';
export 'job_details2_model.dart';

class JobDetails2Widget extends StatefulWidget {
  const JobDetails2Widget({
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

  static String routeName = 'jobDetails2';
  static String routePath = 'jobDetails2';

  @override
  State<JobDetails2Widget> createState() => _JobDetails2WidgetState();
}

class _JobDetails2WidgetState extends State<JobDetails2Widget> {
  late JobDetails2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobDetails2Model());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'jobDetails2'});
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
          model: _model.jobDetailsModel,
          updateCallback: () => safeSetState(() {}),
          child: JobDetailsWidget(
            showBack: false,
            user: widget.user,
            jobposting: widget.jobposting,
            applications: widget.applications,
          ),
        ),
      ),
    );
  }
}
