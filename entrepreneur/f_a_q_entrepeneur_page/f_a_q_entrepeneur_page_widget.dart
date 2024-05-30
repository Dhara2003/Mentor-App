import '/auth/firebase_auth/auth_util.dart';
import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'f_a_q_entrepeneur_page_model.dart';
export 'f_a_q_entrepeneur_page_model.dart';

class FAQEntrepeneurPageWidget extends StatefulWidget {
  const FAQEntrepeneurPageWidget({super.key});

  @override
  State<FAQEntrepeneurPageWidget> createState() =>
      _FAQEntrepeneurPageWidgetState();
}

class _FAQEntrepeneurPageWidgetState extends State<FAQEntrepeneurPageWidget> {
  late FAQEntrepeneurPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQEntrepeneurPageModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
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
        endDrawer: SizedBox(
          width: 250.0,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.drawerMentorCompModel,
              updateCallback: () => setState(() {}),
              child: const DrawerMentorCompWidget(
                selectedPageindex: 7,
              ),
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
                height: 120.0,
                decoration: const BoxDecoration(
                  color: Color(0xFF222A33),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 393.0,
                      height: 60.0,
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
                                onPressed: () async {
                                  context.pushNamed(
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
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              'FAQs',
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
                        height: 60.0,
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
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: 393.0,
                  height: 624.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Mentor_-_Homepage.png',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: const Color(0xFF222A33),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController1,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'Is there a trial version available ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController2,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'How does the revenue system work for the mentors ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController3,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'How does the revenue system work for the mentors ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController4,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'How does the revenue system work for the mentors ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController5,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'Is there a trial version available ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController6,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'Is there a trial version available ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController7,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'Is there a trial version available ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 3.0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8.0),
                              bottomRight: Radius.circular(8.0),
                              topLeft: Radius.circular(8.0),
                              topRight: Radius.circular(8.0),
                            ),
                          ),
                          child: Container(
                            width: 360.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF222A33),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x5FEAEAE4),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                  spreadRadius: 0.2,
                                )
                              ],
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8.0),
                                bottomRight: Radius.circular(8.0),
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: const Color(0xFF222A33),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                width: double.infinity,
                                color: const Color(0xFF222A33),
                                child: ExpandableNotifier(
                                  controller:
                                      _model.expandableExpandableController8,
                                  child: ExpandablePanel(
                                    header: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          8.0, 5.0, 0.0, 5.0),
                                      child: Text(
                                        'Is there a trial version available ?',
                                        style: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                    collapsed: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 0.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF222A33),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 2.0,
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(
                                              0.0,
                                              1.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: const Color(0xFF222A33),
                                        ),
                                      ),
                                      child: Text(
                                        'Lorem ipsum dolor sit amet consectetur. Ornare felis sit ultrices vestibulum integer at. Senectus diam et at sodales nibh placerat malesuada amet. Semper pellentesque quam enim magna sed. Turpis quis lorem rhoncus et tincidunt dui dignissim.',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0x8A000000),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    expanded: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF222A33),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 2.0,
                                                color: Color(0x408F8686),
                                                offset: Offset(
                                                  0.0,
                                                  1.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(8.0),
                                              bottomRight: Radius.circular(8.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0xFF222A33),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .alternate,
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    theme: ExpandableThemeData(
                                      tapHeaderToExpand: true,
                                      tapBodyToExpand: true,
                                      tapBodyToCollapse: true,
                                      headerAlignment:
                                          ExpandablePanelHeaderAlignment.center,
                                      hasIcon: true,
                                      expandIcon: FontAwesomeIcons.chevronDown,
                                      collapseIcon: FontAwesomeIcons.chevronUp,
                                      iconSize: 16.0,
                                      iconColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      iconPadding: const EdgeInsets.fromLTRB(
                                          0.0, 5.0, 20.0, 5.0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]
                          .divide(const SizedBox(height: 10.0))
                          .addToStart(const SizedBox(height: 10.0))
                          .addToEnd(const SizedBox(height: 10.0)),
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
