import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'uploading_attachment_model.dart';
export 'uploading_attachment_model.dart';

class UploadingAttachmentWidget extends StatefulWidget {
  const UploadingAttachmentWidget({super.key});

  @override
  State<UploadingAttachmentWidget> createState() =>
      _UploadingAttachmentWidgetState();
}

class _UploadingAttachmentWidgetState extends State<UploadingAttachmentWidget> {
  late UploadingAttachmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadingAttachmentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: Color(0xFFF1EAFD),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipOval(
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                      child: Icon(
                        Icons.file_present,
                        color: Color(0xFF5F5471),
                        size: 24.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'lj7tnu1v' /* CDL License.pdf */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Aeonik',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'zfhmfte6' /* 120 KB */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Aeonik',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
                    .divide(SizedBox(width: 10.0))
                    .addToStart(SizedBox(width: 16.0))
                    .addToEnd(SizedBox(width: 16.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
