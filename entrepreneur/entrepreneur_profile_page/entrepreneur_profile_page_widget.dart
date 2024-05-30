import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'entrepreneur_profile_page_model.dart';
export 'entrepreneur_profile_page_model.dart';

class EntrepreneurProfilePageWidget extends StatefulWidget {
  const EntrepreneurProfilePageWidget({
    super.key,
    int? selectedPageIndex,
  }) : selectedPageIndex = selectedPageIndex ?? 2;

  final int selectedPageIndex;

  @override
  State<EntrepreneurProfilePageWidget> createState() =>
      _EntrepreneurProfilePageWidgetState();
}

class _EntrepreneurProfilePageWidgetState
    extends State<EntrepreneurProfilePageWidget> with TickerProviderStateMixin {
  late EntrepreneurProfilePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EntrepreneurProfilePageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UserRecord>>(
      stream: queryUserRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFF222A33),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UserRecord> entrepreneurProfilePageUserRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final entrepreneurProfilePageUserRecord =
            entrepreneurProfilePageUserRecordList.isNotEmpty
                ? entrepreneurProfilePageUserRecordList.first
                : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF222A33),
            endDrawer: SizedBox(
              width: 250.0,
              child: Drawer(
                elevation: 16.0,
                child: wrapWithModel(
                  model: _model.drawerEntrepreneurCompModel,
                  updateCallback: () => setState(() {}),
                  child: const DrawerEntrepreneurCompWidget(
                    selectedPageindex: 2,
                  ),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 393.0,
                    height: 759.0,
                    decoration: const BoxDecoration(
                      color: Color(0xFF222A33),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 393.0,
                          height: 45.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFF222A33),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(
                                width: 393.0,
                                height: 45.0,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderWidth: 1.0,
                                          buttonSize: 40.0,
                                          icon: FaIcon(
                                            FontAwesomeIcons.chevronLeft,
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.goNamed(
                                                'EntrepreneurDashboard');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        'Entrepreneur Profile ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 20.0,
                                              letterSpacing: 1.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.9, -0.44),
                                      child: FlutterFlowIconButton(
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        icon: Icon(
                                          Icons.menu,
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          size: 32.0,
                                        ),
                                        onPressed: () async {
                                          scaffoldKey.currentState!
                                              .openEndDrawer();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 393.0,
                          height: 714.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.asset(
                                'assets/images/Mentor_-_Homepage.png',
                              ).image,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 4.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 385.0,
                                  height: 140.0,
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      AuthUserStreamWidget(
                                        builder: (context) => ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            currentUserPhoto,
                                            width: 90.0,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 2.0, 0.0, 2.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Text(
                                            currentUserDisplayName,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      AuthUserStreamWidget(
                                        builder: (context) => Text(
                                          () {
                                            if (valueOrDefault<bool>(
                                                    currentUserDocument
                                                        ?.isMentor,
                                                    false) ==
                                                true) {
                                              return 'Mentor';
                                            } else if (valueOrDefault<bool>(
                                                    currentUserDocument
                                                        ?.isEntrepreneur,
                                                    false) ==
                                                true) {
                                              return 'Entrepreneur';
                                            } else {
                                              return 'Admin';
                                            }
                                          }(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: const Alignment(0.0, 0),
                                        child: TabBar(
                                          labelColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          unselectedLabelColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiary,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          unselectedLabelStyle: const TextStyle(),
                                          indicatorColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent3,
                                          padding: const EdgeInsets.all(1.0),
                                          tabs: const [
                                            Tab(
                                              text: 'Personal Details',
                                            ),
                                            Tab(
                                              text: 'Business Details',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [() async {}, () async {}][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 360.0,
                                                    height: 500.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF222A33),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 10.0,
                                                          color:
                                                              Color(0xFF43494E),
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    ),
                                                    child:
                                                        SingleChildScrollView(
                                                      primary: false,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: Icon(
                                                                    Icons.phone,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Contact number',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        currentPhoneNumber,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .alternate_email_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Email address',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      currentUserEmail,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: Icon(
                                                                    Icons.cake,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Date of birth',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        dateTimeFormat(
                                                                            'yMMMd',
                                                                            currentUserDocument!.dateOfBirth!),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      FFIcons
                                                                          .ktarget,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Gender',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        valueOrDefault(
                                                                            currentUserDocument?.gender,
                                                                            ''),
                                                                        maxLines:
                                                                            2,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              lineHeight: 1.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .credit_score_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'member Role',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        valueOrDefault<bool>(currentUserDocument?.isMentor, false) ==
                                                                                true
                                                                            ? 'Mentor'
                                                                            : 'Entrepreneur',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                                child:
                                                                    FlutterFlowIconButton(
                                                                  borderRadius:
                                                                      20.0,
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      40.0,
                                                                  icon: Icon(
                                                                    Icons
                                                                        .lightbulb_outline,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 24.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Mentorship member since',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                10.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        AuthUserStreamWidget(
                                                                      builder:
                                                                          (context) =>
                                                                              Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          dateTimeFormat(
                                                                              'MMMEd',
                                                                              currentUserDocument?.createdTime),
                                                                          '01/01/2000',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            15.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Social media accounts',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 16.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 320.0,
                                                            height: 45.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondary,
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                  blurRadius:
                                                                      2.0,
                                                                  color: Color(
                                                                      0x61FFFFFF),
                                                                  offset:
                                                                      Offset(
                                                                    0.0,
                                                                    1.0,
                                                                  ),
                                                                )
                                                              ],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                FlutterFlowIconButton(
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .instagram,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 28.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                                FlutterFlowIconButton(
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .linkedin,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 28.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                                FlutterFlowIconButton(
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .twitterSquare,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 28.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                                FlutterFlowIconButton(
                                                                  borderWidth:
                                                                      1.0,
                                                                  buttonSize:
                                                                      50.0,
                                                                  icon: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .facebookSquare,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .alternate,
                                                                    size: 28.0,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    print(
                                                                        'IconButton pressed ...');
                                                                  },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        25.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context.pushNamed(
                                                                    'entrepreneurCreateBizProfilePage');
                                                              },
                                                              child: Container(
                                                                width: 180.0,
                                                                height: 38.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF6241FA),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Update Profile',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ]
                                                            .divide(const SizedBox(
                                                                height: 10.0))
                                                            .addToStart(
                                                                const SizedBox(
                                                                    height:
                                                                        10.0))
                                                            .addToEnd(const SizedBox(
                                                                height: 10.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 4.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 360.0,
                                                    height: 500.0,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFF222A33),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                          blurRadius: 10.0,
                                                          color:
                                                              Color(0xFF43494E),
                                                          offset: Offset(
                                                            0.0,
                                                            4.0,
                                                          ),
                                                        )
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    ),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await queryUserRecordOnce(
                                                          singleRecord: true,
                                                        ).then((s) =>
                                                            s.firstOrNull);
                                                      },
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .stacked_line_chart_sharp,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Startup Name',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                Text(
                                                                          valueOrDefault(
                                                                              currentUserDocument?.startupName,
                                                                              ''),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .apartment_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Startup Stage',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                Text(
                                                                          valueOrDefault(
                                                                              currentUserDocument?.startupStage,
                                                                              ''),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .credit_score_outlined,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Industry background',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Text(
                                                                            valueOrDefault(currentUserDocument?.industryBackground,
                                                                                ''),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .hourglass_empty,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Startup registration date',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).alternate,
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          AuthUserStreamWidget(
                                                                        builder:
                                                                            (context) =>
                                                                                Text(
                                                                          dateTimeFormat(
                                                                              'yMMMd',
                                                                              currentUserDocument!.startupRegDate!),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            20.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        icon:
                                                                            Icon(
                                                                          FFIcons
                                                                              .ktarget,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Previous Employer',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Text(
                                                                            valueOrDefault(currentUserDocument?.previousEmployer,
                                                                                ''),
                                                                            maxLines:
                                                                                2,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  lineHeight: 1.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            20.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        icon:
                                                                            Icon(
                                                                          FFIcons
                                                                              .ktarget,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Previous Designation',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Text(
                                                                            valueOrDefault(currentUserDocument?.previousDesignation,
                                                                                ''),
                                                                            maxLines:
                                                                                2,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  lineHeight: 1.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Align(
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          FlutterFlowIconButton(
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderRadius:
                                                                            20.0,
                                                                        borderWidth:
                                                                            1.0,
                                                                        buttonSize:
                                                                            40.0,
                                                                        icon:
                                                                            Icon(
                                                                          FFIcons
                                                                              .ktarget,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).alternate,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                        onPressed:
                                                                            () {
                                                                          print(
                                                                              'IconButton pressed ...');
                                                                        },
                                                                      ),
                                                                    ),
                                                                    Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Work experience',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Text(
                                                                            valueOrDefault(currentUserDocument?.previousExperience, 0).toString(),
                                                                            maxLines:
                                                                                2,
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                  lineHeight: 1.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                  child:
                                                                      FlutterFlowIconButton(
                                                                    borderColor:
                                                                        Colors
                                                                            .transparent,
                                                                    borderRadius:
                                                                        20.0,
                                                                    borderWidth:
                                                                        1.0,
                                                                    buttonSize:
                                                                        40.0,
                                                                    icon: Icon(
                                                                      Icons
                                                                          .lightbulb_outline,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    onPressed:
                                                                        () {
                                                                      print(
                                                                          'IconButton pressed ...');
                                                                    },
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Entrepreneurial philosophy',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                color: FlutterFlowTheme.of(context).alternate,
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            AuthUserStreamWidget(
                                                                          builder: (context) =>
                                                                              Text(
                                                                            valueOrDefault(currentUserDocument?.userPhilosophy,
                                                                                ''),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 12.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 280.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: const Color(
                                                                      0xFF6241FA),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          100.0,
                                                                      height:
                                                                          55.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              '50%',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Readex Pro',
                                                                                    color: const Color(0xFF6241FA),
                                                                                    fontSize: 24.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Completed',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Readex Pro',
                                                                                  color: const Color(0xFF6241FA),
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'BusinessModelPage',
                                                                              extra: <String, dynamic>{
                                                                                kTransitionInfoKey: const TransitionInfo(
                                                                                  hasTransition: true,
                                                                                  transitionType: PageTransitionType.fade,
                                                                                  duration: Duration(milliseconds: 0),
                                                                                ),
                                                                              },
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                200.0,
                                                                            height:
                                                                                45.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'Update Business Model Canvas',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).alternate,
                                                                                      fontSize: 14.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w300,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .goNamed(
                                                                    'entrepreneurCreateBizProfilePage',
                                                                    queryParameters:
                                                                        {
                                                                      'selectedPageIndex':
                                                                          serializeParam(
                                                                        2,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          const TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: 180.0,
                                                                  height: 38.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF6241FA),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child: Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Update Profile',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).alternate,
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ]
                                                              .divide(const SizedBox(
                                                                  height: 10.0))
                                                              .addToStart(
                                                                  const SizedBox(
                                                                      height:
                                                                          10.0))
                                                              .addToEnd(const SizedBox(
                                                                  height:
                                                                      10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
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
          ),
        );
      },
    );
  }
}
