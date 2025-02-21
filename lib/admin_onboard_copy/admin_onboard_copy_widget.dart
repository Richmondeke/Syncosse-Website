import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_logo_small/main_logo_small_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_onboard_copy_model.dart';
export 'admin_onboard_copy_model.dart';

class AdminOnboardCopyWidget extends StatefulWidget {
  const AdminOnboardCopyWidget({super.key});

  static String routeName = 'AdminOnboardCopy';
  static String routePath = 'adminOnboardCopy';

  @override
  State<AdminOnboardCopyWidget> createState() => _AdminOnboardCopyWidgetState();
}

class _AdminOnboardCopyWidgetState extends State<AdminOnboardCopyWidget> {
  late AdminOnboardCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminOnboardCopyModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AdminOnboardCopy'});
    _model.companyNameTextController ??= TextEditingController();
    _model.companyNameFocusNode ??= FocusNode();

    _model.companyCityTextController ??= TextEditingController();
    _model.companyCityFocusNode ??= FocusNode();

    _model.companyAddressTextController ??= TextEditingController();
    _model.companyAddressFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 140.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(16.0),
                              bottomRight: Radius.circular(16.0),
                              topLeft: Radius.circular(0.0),
                              topRight: Radius.circular(0.0),
                            ),
                          ),
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                32.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.mainLogoSmallModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: MainLogoSmallWidget(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 60.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                                Container(
                                  width: 60.0,
                                  height: 4.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFE2E2E2),
                                  ),
                                ),
                              ].divide(SizedBox(width: 4.0)),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'pudsz72g' /* 1/2 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Aeonik',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(32.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '0rv4xg6z' /* Tell us a bit more. */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Aeonik',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 24.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '4fxw8j9q' /* We’d like to have your company... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Aeonik',
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: 370.0,
                                    child: TextFormField(
                                      controller:
                                          _model.companyNameTextController,
                                      focusNode: _model.companyNameFocusNode,
                                      autofocus: false,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'lrb7oozy' /* Company Name */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Aeonik',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'kidfos0t' /* Company Name */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Aeonik',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      validator: _model
                                          .companyNameTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .selectIndustryValueController1 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'fgffhynw' /* Option 1 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        '7uknd75m' /* Option 2 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'ujpx9se6' /* Option 3 */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.selectIndustryValue1 = val),
                                    width: 370.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Aeonik',
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      '99x6ylbt' /* Select Industry... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .selectIndustryValueController2 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'x90spovj' /* 1-10 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'mg9ugtqm' /* 10-100 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'mqx3swrv' /* 100-1000 */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.selectIndustryValue2 = val),
                                    width: 370.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Aeonik',
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'wbtzohk9' /* Number of Employees... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FlutterFlowDropDown<String>(
                                    controller: _model
                                            .selectIndustryValueController3 ??=
                                        FormFieldController<String>(null),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        'tbrhj0l9' /* Option 1 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'um82tatr' /* Option 2 */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'fqmcncu8' /* Option 3 */,
                                      )
                                    ],
                                    onChanged: (val) => safeSetState(() =>
                                        _model.selectIndustryValue3 = val),
                                    width: 370.0,
                                    height: 40.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Aeonik',
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'snxti2rm' /* How quickly are you looking to... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    elevation: 2.0,
                                    borderColor: Colors.transparent,
                                    borderWidth: 0.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    hidesUnderline: true,
                                    isOverButton: false,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: 370.0,
                                    child: TextFormField(
                                      controller:
                                          _model.companyCityTextController,
                                      focusNode: _model.companyCityFocusNode,
                                      autofocus: false,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '8hgk3lbb' /* Company City */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Aeonik',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'kpywzs3y' /* Company City */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Aeonik',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      validator: _model
                                          .companyCityTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: Container(
                                    width: 370.0,
                                    child: TextFormField(
                                      controller:
                                          _model.companyAddressTextController,
                                      focusNode: _model.companyAddressFocusNode,
                                      autofocus: false,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'dcu3ph94' /* Company Address */,
                                        ),
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Aeonik',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'w7eygiba' /* Company Address */,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        filled: true,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Aeonik',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      validator: _model
                                          .companyAddressTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'ADMIN_ONBOARD_COPY_CONTINUE_BTN_ON_TAP');

                                      var companyRecordReference =
                                          CompanyRecord.collection.doc();
                                      await companyRecordReference.set({
                                        ...createCompanyRecordData(
                                          companyname: _model
                                              .companyNameTextController.text,
                                          city: _model
                                              .companyCityTextController.text,
                                          address: _model
                                              .companyAddressTextController
                                              .text,
                                          employeenumber:
                                              _model.selectIndustryValue2,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'teammembers': [
                                              currentUserReference
                                            ],
                                          },
                                        ),
                                      });
                                      _model.newcompany =
                                          CompanyRecord.getDocumentFromData({
                                        ...createCompanyRecordData(
                                          companyname: _model
                                              .companyNameTextController.text,
                                          city: _model
                                              .companyCityTextController.text,
                                          address: _model
                                              .companyAddressTextController
                                              .text,
                                          employeenumber:
                                              _model.selectIndustryValue2,
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'teammembers': [
                                              currentUserReference
                                            ],
                                          },
                                        ),
                                      }, companyRecordReference);

                                      await currentUserReference!
                                          .update(createUsersRecordData(
                                        admin: true,
                                      ));

                                      context.pushNamed(
                                          LoginControlWidget.routeName);

                                      safeSetState(() {});
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'wuhypr61' /* Continue */,
                                    ),
                                    icon: Icon(
                                      Icons.arrow_forward_outlined,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 370.0,
                                      height: 44.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconAlignment: IconAlignment.end,
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Aeonik',
                                            color: Colors.white,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(60.0),
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
                ),
              ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Container(
                      width: 100.0,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.asset(
                            'assets/images/Frame_1618869034_(1).png',
                          ).image,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
