import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'onboarding_page_model.dart';
export 'onboarding_page_model.dart';

class OnboardingPageWidget extends StatefulWidget {
  const OnboardingPageWidget({super.key});

  @override
  State<OnboardingPageWidget> createState() => _OnboardingPageWidgetState();
}

class _OnboardingPageWidgetState extends State<OnboardingPageWidget> {
  late OnboardingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingPageModel());

    _model.nameFieldTextController ??= TextEditingController();
    _model.nameFieldFocusNode ??= FocusNode();

    _model.phoneFieldTextController ??= TextEditingController();
    _model.phoneFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFF222A33),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 393.0,
                height: 758.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Onboarding_page.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                      child: Text(
                        'Onboarding profile setup',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 24.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                      child: Container(
                        width: 380.0,
                        height: 680.0,
                        decoration: const BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 20.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    maxWidth: 120.00,
                                    allowPhoto: true,
                                    pickerFontFamily: 'Poppins',
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(
                                        () => _model.isDataUploading = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];

                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                                blurHash: m.blurHash,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isDataUploading = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      setState(() {
                                        _model.uploadedLocalFile =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }

                                  await currentUserReference!
                                      .update(createUserRecordData(
                                    photoUrl: _model.uploadedFileUrl,
                                  ));
                                },
                                child: SizedBox(
                                  width: 120.0,
                                  height: 120.0,
                                  child: Stack(
                                    alignment:
                                        const AlignmentDirectional(1.25, -1.25),
                                    children: [
                                      Container(
                                        width: 120.0,
                                        height: 120.0,
                                        constraints: const BoxConstraints(
                                          maxWidth: 150.0,
                                          maxHeight: 150.0,
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.network(
                                              valueOrDefault<String>(
                                                _model.uploadedFileUrl,
                                                'image',
                                              ),
                                            ).image,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(25.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .tertiary,
                                          ),
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .alternate,
                                        borderRadius: 20.0,
                                        borderWidth: 0.5,
                                        buttonSize: 37.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.penAlt,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size: 16.0,
                                        ),
                                        onPressed: () {
                                          print('IconButton pressed ...');
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 10.0),
                                child: SizedBox(
                                  width: 360.0,
                                  child: TextFormField(
                                    controller: _model.nameFieldTextController,
                                    focusNode: _model.nameFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.nameFieldTextController',
                                      const Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      labelText: 'Name',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFFD5D5D5),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      alignLabelWithHint: false,
                                      hintText: 'Enter your name',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFFD5D5D5),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFF283038),
                                      contentPadding: const EdgeInsets.all(10.0),
                                      suffixIcon: _model
                                              .nameFieldTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.nameFieldTextController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: const Icon(
                                                Icons.clear,
                                                color: Color(0xFFD5D5D5),
                                                size: 24.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    keyboardType: TextInputType.name,
                                    validator: _model
                                        .nameFieldTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                            ),
                            Opacity(
                              opacity: 0.7,
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 10.0),
                                child: SizedBox(
                                  width: 360.0,
                                  child: TextFormField(
                                    controller: _model.phoneFieldTextController,
                                    focusNode: _model.phoneFieldFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.phoneFieldTextController',
                                      const Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    autofocus: false,
                                    textInputAction: TextInputAction.next,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      isDense: false,
                                      labelText: 'Phone Number',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFFD5D5D5),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Enter your phone number',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: const Color(0xFFD5D5D5),
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color(0x00000000),
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 0.2,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFF283038),
                                      contentPadding: const EdgeInsets.all(10.0),
                                      suffixIcon: _model
                                              .phoneFieldTextController!
                                              .text
                                              .isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.phoneFieldTextController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: const Icon(
                                                Icons.clear,
                                                color: Color(0xFFD5D5D5),
                                                size: 24.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    maxLength: 13,
                                    maxLengthEnforcement:
                                        MaxLengthEnforcement.enforced,
                                    buildCounter: (context,
                                            {required currentLength,
                                            required isFocused,
                                            maxLength}) =>
                                        null,
                                    validator: _model
                                        .phoneFieldTextControllerValidator
                                        .asValidator(context),
                                    inputFormatters: [_model.phoneFieldMask],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 360.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color: const Color(0xFF283038),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: StreamBuilder<List<UserRecord>>(
                                stream: queryUserRecord(
                                  queryBuilder: (userRecord) =>
                                      userRecord.where(
                                    'gender',
                                    isEqualTo: _model.genderRadioButtonValue,
                                  ),
                                  singleRecord: true,
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<UserRecord>
                                      genderRadioButtonUserRecordList =
                                      snapshot.data!;
                                  // Return an empty Container when the item does not exist.
                                  if (snapshot.data!.isEmpty) {
                                    return Container();
                                  }
                                  final genderRadioButtonUserRecord =
                                      genderRadioButtonUserRecordList.isNotEmpty
                                          ? genderRadioButtonUserRecordList
                                              .first
                                          : null;
                                  return FlutterFlowRadioButton(
                                    options: ['Male', 'Female', 'Not Preferred']
                                        .toList(),
                                    onChanged: (val) async {
                                      setState(() {});
                                      await currentUserReference!
                                          .update(createUserRecordData(
                                        gender: _model.genderRadioButtonValue,
                                      ));
                                    },
                                    controller: _model
                                            .genderRadioButtonValueController ??=
                                        FormFieldController<String>(null),
                                    optionHeight: 44.0,
                                    optionWidth: 114.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          fontSize: 11.5,
                                          letterSpacing: 0.0,
                                        ),
                                    selectedTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 12.5,
                                              letterSpacing: 0.0,
                                            ),
                                    buttonPosition: RadioButtonPosition.left,
                                    direction: Axis.horizontal,
                                    radioButtonColor:
                                        FlutterFlowTheme.of(context).accent2,
                                    inactiveRadioButtonColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                    toggleable: false,
                                    horizontalAlignment: WrapAlignment.center,
                                    verticalAlignment: WrapCrossAlignment.start,
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  final datePickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: getCurrentTimestamp,
                                    firstDate: DateTime(1900),
                                    lastDate: getCurrentTimestamp,
                                    builder: (context, child) {
                                      return wrapInMaterialDatePickerTheme(
                                        context,
                                        child!,
                                        headerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        headerForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        headerTextStyle:
                                            FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 32.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                        pickerBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        pickerForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        selectedDateTimeBackgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        selectedDateTimeForegroundColor:
                                            FlutterFlowTheme.of(context).info,
                                        actionButtonForegroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryText,
                                        iconSize: 24.0,
                                      );
                                    },
                                  );

                                  if (datePickedDate != null) {
                                    safeSetState(() {
                                      _model.datePicked = DateTime(
                                        datePickedDate.year,
                                        datePickedDate.month,
                                        datePickedDate.day,
                                      );
                                    });
                                  }
                                },
                                text: 'Select your DoB',
                                icon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 360.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).info,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 15.0, 0.0, 0.0),
                                child: Text(
                                  'Choose your user role',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                await currentUserReference!
                                    .update(createUserRecordData(
                                  gender: _model.genderRadioButtonValue,
                                  displayName:
                                      _model.nameFieldTextController.text,
                                  phoneNumber:
                                      _model.phoneFieldTextController.text,
                                  dateOfBirth: _model.datePicked,
                                  isMentor: true,
                                  isAdmin: false,
                                  isEntrepreneur: false,
                                ));

                                context.goNamed(
                                  'MentorDashboard',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                              text: 'Mentor',
                              options: FFButtonOptions(
                                width: 360.0,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).info,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await currentUserReference!
                                      .update(createUserRecordData(
                                    gender: _model.genderRadioButtonValue,
                                    displayName:
                                        _model.nameFieldTextController.text,
                                    phoneNumber:
                                        _model.phoneFieldTextController.text,
                                    dateOfBirth: _model.datePicked,
                                    isMentor: false,
                                    isAdmin: false,
                                    isEntrepreneur: true,
                                  ));

                                  context.goNamed(
                                    'EntrepreneurDashboard',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                text: 'Entrepreneur',
                                options: FFButtonOptions(
                                  width: 360.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).info,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  await currentUserReference!
                                      .update(createUserRecordData(
                                    gender: _model.genderRadioButtonValue,
                                    displayName:
                                        _model.nameFieldTextController.text,
                                    phoneNumber:
                                        _model.phoneFieldTextController.text,
                                    dateOfBirth: _model.datePicked,
                                    isMentor: false,
                                    isAdmin: true,
                                    isEntrepreneur: false,
                                  ));

                                  context.goNamed(
                                    'AdminHomepage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                text: 'Administrator',
                                options: FFButtonOptions(
                                  width: 360.0,
                                  height: 40.0,
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).info,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 3.0,
                                  borderSide: const BorderSide(
                                    width: 0.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 10.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
