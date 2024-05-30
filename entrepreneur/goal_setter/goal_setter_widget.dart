import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/goal_setter_component/goal_setter_component_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'goal_setter_model.dart';
export 'goal_setter_model.dart';

class GoalSetterWidget extends StatefulWidget {
  const GoalSetterWidget({super.key});

  @override
  State<GoalSetterWidget> createState() => _GoalSetterWidgetState();
}

class _GoalSetterWidgetState extends State<GoalSetterWidget> {
  late GoalSetterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalSetterModel());

    _model.ideaValSwitchValue = false;
    _model.marketResearchSwitchValue = false;
    _model.productServiceSwitchValue = false;
    _model.marketingSalesSwitchValue = false;
    _model.bizOpsSwitchValue = false;
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
              model: _model.drawerEntrepreneurCompModel,
              updateCallback: () => setState(() {}),
              child: const DrawerEntrepreneurCompWidget(),
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
                                buttonSize: 54.0,
                                icon: FaIcon(
                                  FontAwesomeIcons.chevronLeft,
                                  color: FlutterFlowTheme.of(context).alternate,
                                  size: 28.0,
                                ),
                                onPressed: () async {
                                  context.pushNamed(
                                    'Goaltracker',
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
                              'Goal Setter',
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
              Container(
                width: 393.0,
                height: 619.0,
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
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
                        child: Container(
                          width: 380.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'To identify the current start up stage & to simplify going to the next stage here we have curated some step & when you check mark a particular section the same information will be shared with your mentor to keep you both updated on startup progress.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.goalSetterComponentModel,
                      updateCallback: () => setState(() {}),
                      child: GoalSetterComponentWidget(
                        parameter1: _model.ideaValColor,
                        parameter2: _model.ideaValSwitchValue,
                        parameter3: _model.marketResearchColor,
                        parameter4: _model.marketResearchSwitchValue,
                        parameter5: _model.productServiceColor,
                        parameter6: _model.productServiceSwitchValue,
                        parameter7: _model.marketingSalesColor,
                        parameter8: _model.marketingSalesSwitchValue,
                        parameter9: _model.bizOpsColor,
                        parameter10: _model.bizOpsSwitchValue,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: 375.0,
                        height: 390.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).secondary,
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            ' 1.  Goals to achieve Idea Validation',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Switch.adaptive(
                                          value: _model.ideaValSwitchValue!,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.ideaValSwitchValue =
                                                    newValue);
                                            if (newValue) {
                                              _model.ideaValColor = false;
                                              setState(() {});

                                              await currentUserReference!
                                                  .update({
                                                ...mapToFirestore(
                                                  {
                                                    'goalSetterSwitch':
                                                        FieldValue.arrayUnion([
                                                      _model.ideaValSwitchValue
                                                          ?.toString()
                                                    ]),
                                                  },
                                                ),
                                              });
                                            }
                                          },
                                          activeColor: const Color(0xDDBAB9BF),
                                          activeTrackColor: const Color(0xFF90FF69),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          inactiveThumbColor: const Color(0xDDBAB9BF),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowCheckboxGroup(
                                      options: const [
                                        'Define your ideal customer profile',
                                        'Analyze competitor landscape and identify potential gaps.',
                                        'Develop a clear value proposition for your target audience.'
                                      ],
                                      onChanged: (val) async {
                                        setState(() =>
                                            _model.ideaValGroupValues = val);
                                        _model.ideaValColor = false;
                                        setState(() {});
                                      },
                                      controller:
                                          _model.ideaValGroupValueController ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                      checkboxBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(4.0),
                                      initialized:
                                          _model.ideaValGroupValues != null,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await GoalSetterRecord.collection
                                            .doc()
                                            .set({
                                          ...createGoalSetterRecordData(
                                            ideaValSwitchValue:
                                                _model.ideaValSwitchValue,
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'ideaValidation':
                                                  _model.ideaValGroupValues,
                                            },
                                          ),
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Updated successfully',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor: const Color(0xFFD7D6DD),
                                          ),
                                        );
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 120.0,
                                        height: 30.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFF222A33),
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 320.0,
                                      child: Divider(
                                        height: 25.0,
                                        thickness: 1.0,
                                        indent: 10.0,
                                        endIndent: 10.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 5.0))
                                      .addToEnd(const SizedBox(height: 4.0)),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            '2.  Goals to achieve Market Research',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Switch.adaptive(
                                          value:
                                              _model.marketResearchSwitchValue!,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                    .marketResearchSwitchValue =
                                                newValue);
                                            if (newValue) {
                                              _model.marketResearchColor =
                                                  false;
                                              setState(() {});
                                            }
                                          },
                                          activeColor: const Color(0xDDBAB9BF),
                                          activeTrackColor: const Color(0xFF90FF69),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          inactiveThumbColor: const Color(0xDDBAB9BF),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowCheckboxGroup(
                                      options: const [
                                        'Create a minimum viable product (MVP) or prototype.',
                                        'Test your MVP with potential customers and gather feedback.',
                                        'Refine your product/service based on user feedback.'
                                      ],
                                      onChanged: (val) async {
                                        setState(() => _model
                                            .marketResearchGroupValues = val);
                                        _model.marketResearchColor = false;
                                        setState(() {});
                                      },
                                      controller: _model
                                              .marketResearchGroupValueController ??=
                                          FormFieldController<List<String>>(
                                        [],
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                      checkboxBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(4.0),
                                      initialized:
                                          _model.marketResearchGroupValues !=
                                              null,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await GoalSetterRecord.collection
                                            .doc()
                                            .set({
                                          ...mapToFirestore(
                                            {
                                              'ideaValidation': _model
                                                  .marketResearchGroupValues,
                                            },
                                          ),
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Updated successfully',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor: const Color(0xFFD7D6DD),
                                          ),
                                        );
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 120.0,
                                        height: 30.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFF222A33),
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 320.0,
                                      child: Divider(
                                        height: 25.0,
                                        thickness: 1.0,
                                        indent: 10.0,
                                        endIndent: 10.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 5.0))
                                      .addToEnd(const SizedBox(height: 4.0)),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Text(
                                              '3.  Goals to achieve Product/Service Development:',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                        Switch.adaptive(
                                          value:
                                              _model.productServiceSwitchValue!,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                    .productServiceSwitchValue =
                                                newValue);
                                            if (newValue) {
                                              _model.productServiceColor =
                                                  false;
                                              setState(() {});
                                            }
                                          },
                                          activeColor: const Color(0xDDBAB9BF),
                                          activeTrackColor: const Color(0xFF90FF69),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          inactiveThumbColor: const Color(0xDDBAB9BF),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowCheckboxGroup(
                                      options: const [
                                        'Create a minimum viable product (MVP) or prototype',
                                        'Test your MVP with potential customers & gather feedback',
                                        'Refine your product/service based on user feedback'
                                      ],
                                      onChanged: (val) async {
                                        setState(() => _model
                                            .productServiceGroupValues = val);
                                        _model.productServiceColor = false;
                                        setState(() {});
                                      },
                                      controller: _model
                                              .productServiceGroupValueController ??=
                                          FormFieldController<List<String>>(
                                        [],
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                      checkboxBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(4.0),
                                      initialized:
                                          _model.productServiceGroupValues !=
                                              null,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await GoalSetterRecord.collection
                                            .doc()
                                            .set({
                                          ...mapToFirestore(
                                            {
                                              'ideaValidation': _model
                                                  .productServiceGroupValues,
                                            },
                                          ),
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Updated successfully',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor: const Color(0xFFD7D6DD),
                                          ),
                                        );
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 120.0,
                                        height: 30.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFF222A33),
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 320.0,
                                      child: Divider(
                                        height: 25.0,
                                        thickness: 1.0,
                                        indent: 10.0,
                                        endIndent: 10.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 5.0))
                                      .addToEnd(const SizedBox(height: 4.0)),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            '4.  Goals to achieve Marketing/Sales',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Switch.adaptive(
                                          value:
                                              _model.marketingSalesSwitchValue!,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                    .marketingSalesSwitchValue =
                                                newValue);
                                            if (newValue) {
                                              _model.marketingSalesColor =
                                                  false;
                                              setState(() {});
                                            }
                                          },
                                          activeColor: const Color(0xDDBAB9BF),
                                          activeTrackColor: const Color(0xFF90FF69),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          inactiveThumbColor: const Color(0xDDBAB9BF),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowCheckboxGroup(
                                      options: const [
                                        'Define your ideal customer profile',
                                        'Analyze competitor landscape and identify potential gaps.',
                                        'Develop a clear value proposition for your target audience.'
                                      ],
                                      onChanged: (val) async {
                                        setState(() => _model
                                            .marketingSalesGroupValues = val);
                                        _model.marketingSalesColor = false;
                                        setState(() {});
                                      },
                                      controller: _model
                                              .marketingSalesGroupValueController ??=
                                          FormFieldController<List<String>>(
                                        [],
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                      checkboxBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(4.0),
                                      initialized:
                                          _model.marketingSalesGroupValues !=
                                              null,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await GoalSetterRecord.collection
                                            .doc()
                                            .set({
                                          ...mapToFirestore(
                                            {
                                              'ideaValidation': _model
                                                  .marketingSalesGroupValues,
                                            },
                                          ),
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Updated successfully',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor: const Color(0xFFD7D6DD),
                                          ),
                                        );
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 120.0,
                                        height: 30.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFF222A33),
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 320.0,
                                      child: Divider(
                                        height: 25.0,
                                        thickness: 1.0,
                                        indent: 10.0,
                                        endIndent: 10.0,
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 5.0))
                                      .addToEnd(const SizedBox(height: 4.0)),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            '5.  Goals to achieve Business operation',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Switch.adaptive(
                                          value: _model.bizOpsSwitchValue!,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                .bizOpsSwitchValue = newValue);
                                            if (newValue) {
                                              _model.bizOpsColor = false;
                                              setState(() {});
                                            }
                                          },
                                          activeColor: const Color(0xDDBAB9BF),
                                          activeTrackColor: const Color(0xFF90FF69),
                                          inactiveTrackColor:
                                              FlutterFlowTheme.of(context)
                                                  .accent1,
                                          inactiveThumbColor: const Color(0xDDBAB9BF),
                                        ),
                                      ],
                                    ),
                                    FlutterFlowCheckboxGroup(
                                      options: const [
                                        'Develop a financial model & funding plan',
                                        'Secure funding (if needed) to support business growth',
                                        'Both the above'
                                      ],
                                      onChanged: (val) async {
                                        setState(() =>
                                            _model.bizOpsGroupValues = val);
                                        _model.bizOpsColor = false;
                                        setState(() {});
                                      },
                                      controller:
                                          _model.bizOpsGroupValueController ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).accent1,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                      checkboxBorderColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                      checkboxBorderRadius:
                                          BorderRadius.circular(4.0),
                                      initialized:
                                          _model.bizOpsGroupValues != null,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        await GoalSetterRecord.collection
                                            .doc()
                                            .set({
                                          ...mapToFirestore(
                                            {
                                              'ideaValidation':
                                                  _model.bizOpsGroupValues,
                                            },
                                          ),
                                        });
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Updated successfully',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor: const Color(0xFFD7D6DD),
                                          ),
                                        );
                                      },
                                      text: 'Save',
                                      options: FFButtonOptions(
                                        width: 120.0,
                                        height: 30.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .accent4,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFF222A33),
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: const BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                  ]
                                      .divide(const SizedBox(height: 5.0))
                                      .addToEnd(const SizedBox(height: 4.0)),
                                ),
                              ),
                            ]
                                .addToStart(const SizedBox(height: 10.0))
                                .addToEnd(const SizedBox(height: 10.0)),
                          ),
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
