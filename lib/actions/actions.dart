import '/backend/backend.dart';
import '/components/modal_sections/modal_user/modal_user_widget.dart';
import '/components/modal_sections/modaljobs/modaljobs_widget.dart';
import '/components/modal_sections/notification/notification_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';

Future opennotifications(BuildContext context) async {
  if (MediaQuery.sizeOf(context).width <= 991.0) {
    context.pushNamed(NotificationsWidget.routeName);
  } else {
    await showDialog(
      barrierColor: FlutterFlowTheme.of(context).accent4,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(1.0, -1.0)
              .resolve(Directionality.of(context)),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: NotificationWidget(),
          ),
        );
      },
    );
  }
}

Future openuserdetails(
  BuildContext context, {
  UsersRecord? user,
}) async {
  if (MediaQuery.sizeOf(context).width <= 991.0) {
    context.pushNamed(
      UserDetailsWidget.routeName,
      queryParameters: {
        'showBack': serializeParam(
          false,
          ParamType.bool,
        ),
        'user': serializeParam(
          user,
          ParamType.Document,
        ),
      }.withoutNulls,
      extra: <String, dynamic>{
        'user': user,
      },
    );
  } else {
    await showDialog(
      barrierColor: FlutterFlowTheme.of(context).accent4,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(1.0, -1.0)
              .resolve(Directionality.of(context)),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: ModalUserWidget(
              user: user,
            ),
          ),
        );
      },
    );
  }
}

Future openJobDetails(
  BuildContext context, {
  UsersRecord? user,
  JobPostingRecord? jobposting,
  ApplicationsRecord? applications,
}) async {
  if (MediaQuery.sizeOf(context).width <= 991.0) {
    context.pushNamed(
      JobDetails2Widget.routeName,
      queryParameters: {
        'showBack': serializeParam(
          false,
          ParamType.bool,
        ),
        'jobposting': serializeParam(
          jobposting,
          ParamType.Document,
        ),
      }.withoutNulls,
      extra: <String, dynamic>{
        'jobposting': jobposting,
      },
    );
  } else {
    await showDialog(
      barrierColor: FlutterFlowTheme.of(context).accent4,
      context: context,
      builder: (dialogContext) {
        return Dialog(
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.transparent,
          alignment: AlignmentDirectional(1.0, -1.0)
              .resolve(Directionality.of(context)),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            child: ModaljobsWidget(
              user: user,
              jobPosting: jobposting,
              applications: applications,
            ),
          ),
        );
      },
    );
  }
}

Future searchresults(BuildContext context) async {}
