import '/components/jobscard_driver/jobscard_driver_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'jobs_card_model.dart';
export 'jobs_card_model.dart';

class JobsCardWidget extends StatefulWidget {
  const JobsCardWidget({super.key});

  @override
  State<JobsCardWidget> createState() => _JobsCardWidgetState();
}

class _JobsCardWidgetState extends State<JobsCardWidget> {
  late JobsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => JobsCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 4.0,
          sigmaY: 6.0,
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).accent4,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              wrapWithModel(
                model: _model.jobscardDriverModel,
                updateCallback: () => safeSetState(() {}),
                child: JobscardDriverWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
