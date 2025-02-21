import '/components/emptystate/emptystate_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'emptywidget_model.dart';
export 'emptywidget_model.dart';

class EmptywidgetWidget extends StatefulWidget {
  const EmptywidgetWidget({super.key});

  @override
  State<EmptywidgetWidget> createState() => _EmptywidgetWidgetState();
}

class _EmptywidgetWidgetState extends State<EmptywidgetWidget> {
  late EmptywidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptywidgetModel());

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
                model: _model.emptystateModel,
                updateCallback: () => safeSetState(() {}),
                child: EmptystateWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
