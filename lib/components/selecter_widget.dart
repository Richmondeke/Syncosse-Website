import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'selecter_model.dart';
export 'selecter_model.dart';

class SelecterWidget extends StatefulWidget {
  const SelecterWidget({super.key});

  @override
  State<SelecterWidget> createState() => _SelecterWidgetState();
}

class _SelecterWidgetState extends State<SelecterWidget>
    with TickerProviderStateMixin {
  late SelecterModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelecterModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 42.0,
      decoration: BoxDecoration(
        color: Color(0xFFE5FFE8),
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Text(
          FFLocalizations.of(context).getText(
            'muvjmi2k' /* None */,
          ),
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Aeonik',
                letterSpacing: 0.0,
                useGoogleFonts: false,
              ),
        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
      ),
    );
  }
}
