import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_webnav/admin_webnav_widget.dart';
import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/components/modals/command_palette/command_palette_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/actions/actions.dart' as action_blocks;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_contracts_model.dart';
export 'main_contracts_model.dart';

class MainContractsWidget extends StatefulWidget {
  const MainContractsWidget({super.key});

  static String routeName = 'Main_Contracts';
  static String routePath = 'mainContracts';

  @override
  State<MainContractsWidget> createState() => _MainContractsWidgetState();
}

class _MainContractsWidgetState extends State<MainContractsWidget>
    with TickerProviderStateMixin {
  late MainContractsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainContractsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Main_Contracts'});
    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: !isWeb
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                automaticallyImplyLeading: false,
                title: Text(
                  FFLocalizations.of(context).getText(
                    '4h88trkp' /* Contracts */,
                  ),
                  style: FlutterFlowTheme.of(context).displaySmall.override(
                        fontFamily: 'Aeonik',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    wrapWithModel(
                      model: _model.adminWebnavModel,
                      updateCallback: () => safeSetState(() {}),
                      child: AdminWebnavWidget(
                        selectedNav: 3,
                      ),
                    ),
                  Expanded(
                    child: Container(
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 1.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                              ),
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 60.0,
                                        icon: Icon(
                                          Icons.search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 30.0,
                                        ),
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'MAIN_CONTRACTS_search_rounded_ICN_ON_TAP');
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            barrierColor: Color(0x1A000000),
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(context)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: Container(
                                                    height: double.infinity,
                                                    child:
                                                        CommandPaletteWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 8.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '9uglwnqn' /* Welcome Back Barbara */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Aeonik',
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation1']!),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'pkkwpcc6' /* Driver Reference: DRV-28-1381-... */,
                                      ),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Aeonik',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ).animateOnPageLoad(animationsMap[
                                        'textOnPageLoadAnimation2']!),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 24.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'MAIN_CONTRACTS_Container_801p1nmx_ON_TAP');
                                        await action_blocks
                                            .opennotifications(context);
                                      },
                                      child: Container(
                                        width: 48.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(),
                                        child: Icon(
                                          Icons.notifications_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    if ((currentUserPhoto != null &&
                                            currentUserPhoto != '') &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                        ))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Container(
                                            width: 48.0,
                                            height: 48.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              currentUserPhoto,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    if ((currentUserPhoto == null ||
                                            currentUserPhoto == '') &&
                                        responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Stack(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            children: [
                                              Container(
                                                width: 48.0,
                                                height: 48.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3t2nam9s' /* B.O */,
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Aeonik',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          useGoogleFonts: false,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation3']!),
                                            ],
                                          ),
                                        ),
                                      ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ),
                            ],
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                          ))
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 24.0),
                                    child: GridView(
                                      padding: EdgeInsets.zero,
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 0.0,
                                        mainAxisSpacing: 0.0,
                                        childAspectRatio: 0.0,
                                      ),
                                      primary: false,
                                      scrollDirection: Axis.vertical,
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: wrapWithModel(
                                              model:
                                                  _model.jobscardDriverModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: JobscardDriverWidget(),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 2942.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel5,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel6,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel7,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                        Container(
                                          width: 200.0,
                                          height: 294.0,
                                          constraints: BoxConstraints(
                                            maxHeight: 294.0,
                                          ),
                                          decoration: BoxDecoration(),
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: wrapWithModel(
                                            model: _model.jobscardDriverModel8,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: JobscardDriverWidget(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 24.0),
                                    child:
                                        StreamBuilder<List<JobPostingRecord>>(
                                      stream: queryJobPostingRecord(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<JobPostingRecord>
                                            columnJobPostingRecordList =
                                            snapshot.data!;

                                        return SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: List.generate(
                                                columnJobPostingRecordList
                                                    .length, (columnIndex) {
                                              final columnJobPostingRecord =
                                                  columnJobPostingRecordList[
                                                      columnIndex];
                                              return Container(
                                                width: double.infinity,
                                                height: 294.0,
                                                constraints: BoxConstraints(
                                                  maxHeight: 294.0,
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: JobscardDriverWidget(
                                                  key: Key(
                                                      'Keyb28_${columnIndex}_of_${columnJobPostingRecordList.length}'),
                                                  jobposting:
                                                      columnJobPostingRecord
                                                          .reference,
                                                  job: columnJobPostingRecord,
                                                ),
                                              );
                                            }).divide(SizedBox(height: 12.0)),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
