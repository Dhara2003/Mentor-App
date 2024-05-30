import '/auth/firebase_auth/auth_util.dart';
import '/components/admin_page_card/admin_page_card_widget.dart';
import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/components/home_page_card_component/home_page_card_component_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'admin_homepage_model.dart';
export 'admin_homepage_model.dart';

class AdminHomepageWidget extends StatefulWidget {
  const AdminHomepageWidget({super.key});

  @override
  State<AdminHomepageWidget> createState() => _AdminHomepageWidgetState();
}

class _AdminHomepageWidgetState extends State<AdminHomepageWidget> {
  late AdminHomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminHomepageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final chartPieChartColorsList = [
      FlutterFlowTheme.of(context).customColor2,
      FlutterFlowTheme.of(context).accent2,
      FlutterFlowTheme.of(context).accent3
    ];
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
              model: _model.drawerAdminCompModel,
              updateCallback: () => setState(() {}),
              child: const DrawerAdminCompWidget(),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 393.0,
                height: 140.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF222A33),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 393.0,
                      height: 66.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15.0, 0.0, 0.0, 0.0),
                              child: FlutterFlowIconButton(
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                icon: FaIcon(
                                  FontAwesomeIcons.chevronLeft,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'Admin Dashboard',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 20.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: 393.0,
                        height: 74.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFF222A33),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 2.0,
                              color: Color(0xFF333842),
                              offset: Offset(
                                0.0,
                                1.0,
                              ),
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: AuthUserStreamWidget(
                                builder: (context) => ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(
                                    currentUserPhoto,
                                    width: 50.0,
                                    height: 50.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 4.0),
                                        child: Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat(
                                                'MMMEd', getCurrentTimestamp),
                                            'Mon, 01 Jan',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                fontSize: 8.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    AuthUserStreamWidget(
                                      builder: (context) => Text(
                                        'Hi, $currentUserDisplayName',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: const Color(0xFF222A33),
                                    icon: Icon(
                                      Icons.notification_add,
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 15.0, 0.0),
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
                                      scaffoldKey.currentState!.openEndDrawer();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 393.0,
                height: 712.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Mentor_-_Homepage.png',
                    ).image,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 15.0, 10.0, 10.0),
                            child: GridView(
                              padding: EdgeInsets.zero,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                childAspectRatio: 1.0,
                              ),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                wrapWithModel(
                                  model: _model.adminPageCardModel1,
                                  updateCallback: () => setState(() {}),
                                  child: AdminPageCardWidget(
                                    icon: Icon(
                                      Icons.person_outline,
                                      color: FlutterFlowTheme.of(context)
                                          .customColor2,
                                      size: 35.0,
                                    ),
                                    title: 'Total  \nEntrepreneurs',
                                    bgColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.adminPageCardModel2,
                                  updateCallback: () => setState(() {}),
                                  child: AdminPageCardWidget(
                                    icon: Icon(
                                      FFIcons.kcounseling,
                                      color:
                                          FlutterFlowTheme.of(context).accent2,
                                      size: 32.0,
                                    ),
                                    title: 'Total \nmentors',
                                    bgColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.adminPageCardModel3,
                                  updateCallback: () => setState(() {}),
                                  child: AdminPageCardWidget(
                                    icon: Icon(
                                      FFIcons.ktargetAudience15044472,
                                      color:
                                          FlutterFlowTheme.of(context).accent3,
                                      size: 32.0,
                                    ),
                                    title: 'Total Active matches',
                                    bgColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    textColor:
                                        FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Container(
                        width: 369.0,
                        height: 201.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).alternate,
                          borderRadius: BorderRadius.circular(14.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: SizedBox(
                          width: 370.0,
                          height: 266.0,
                          child: FlutterFlowPieChart(
                            data: FFPieChartData(
                              values: List.generate(
                                  random_data.randomInteger(1, 10),
                                  (index) =>
                                      random_data.randomName(true, false)),
                              colors: chartPieChartColorsList,
                              radius: [100.0],
                            ),
                            donutHoleRadius: 0.0,
                            donutHoleColor: Colors.transparent,
                            sectionLabelStyle: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: GridView(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 15.0,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 1.28,
                          ),
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.homePageCardComponentModel1,
                                updateCallback: () => setState(() {}),
                                child: HomePageCardComponentWidget(
                                  icon: Icon(
                                    Icons.person,
                                    color: FlutterFlowTheme.of(context).accent3,
                                    size: 32.0,
                                  ),
                                  title: 'Assigned Entrepreneur',
                                  bgColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  textColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: wrapWithModel(
                                model: _model.homePageCardComponentModel2,
                                updateCallback: () => setState(() {}),
                                child: HomePageCardComponentWidget(
                                  icon: const Icon(
                                    Icons.calendar_month,
                                    color: Color(0xFFF9BE7C),
                                    size: 32.0,
                                  ),
                                  title: 'Manage Sessions',
                                  bgColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  textColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.homePageCardComponentModel3,
                                updateCallback: () => setState(() {}),
                                child: HomePageCardComponentWidget(
                                  icon: const Icon(
                                    Icons.chat_bubble_rounded,
                                    color: Color(0xFFAAC6FB),
                                    size: 32.0,
                                  ),
                                  title: 'Manage chat sessions',
                                  bgColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  textColor:
                                      FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: wrapWithModel(
                                model: _model.homePageCardComponentModel4,
                                updateCallback: () => setState(() {}),
                                child: HomePageCardComponentWidget(
                                  icon: const Icon(
                                    Icons.note_alt_rounded,
                                    color: Color(0xFFFF5959),
                                    size: 32.0,
                                  ),
                                  title: 'Manage Resources',
                                  bgColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  textColor:
                                      FlutterFlowTheme.of(context).primary,
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
      ),
    );
  }
}
