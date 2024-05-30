import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'goal_setter_component_model.dart';
export 'goal_setter_component_model.dart';

class GoalSetterComponentWidget extends StatefulWidget {
  const GoalSetterComponentWidget({
    super.key,
    bool? parameter1,
    this.parameter2,
    bool? parameter3,
    this.parameter4,
    bool? parameter5,
    this.parameter6,
    bool? parameter7,
    this.parameter8,
    bool? parameter9,
    this.parameter10,
  })  : parameter1 = parameter1 ?? false,
        parameter3 = parameter3 ?? false,
        parameter5 = parameter5 ?? false,
        parameter7 = parameter7 ?? false,
        parameter9 = parameter9 ?? false;

  final bool parameter1;
  final bool? parameter2;
  final bool parameter3;
  final bool? parameter4;
  final bool parameter5;
  final bool? parameter6;
  final bool parameter7;
  final bool? parameter8;
  final bool parameter9;
  final bool? parameter10;

  @override
  State<GoalSetterComponentWidget> createState() =>
      _GoalSetterComponentWidgetState();
}

class _GoalSetterComponentWidgetState extends State<GoalSetterComponentWidget> {
  late GoalSetterComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalSetterComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await currentUserReference!.update(createUserRecordData());
      },
      child: Container(
        width: 380.0,
        height: 100.0,
        decoration: BoxDecoration(
          color: const Color(0xFF222A33),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondary,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(3.0, 10.0, 3.0, 5.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Idea \nvalidation',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFBAA9A9),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: () {
                            if (widget.parameter1 == true) {
                              return const Color(0xDDBAB9BF);
                            } else if (widget.parameter2 == true) {
                              return const Color(0xFF90FF69);
                            } else {
                              return const Color(0xFFF38016);
                            }
                          }(),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Market \nresearch',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFBAA9A9),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: () {
                            if (widget.parameter3 == true) {
                              return const Color(0xDDBAB9BF);
                            } else if (widget.parameter4 == true) {
                              return const Color(0xFF90FF69);
                            } else {
                              return const Color(0xFFF38016);
                            }
                          }(),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Product/service \ndevelopment',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFBAA9A9),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: () {
                            if (widget.parameter5 == true) {
                              return const Color(0xDDBAB9BF);
                            } else if (widget.parameter6 == true) {
                              return const Color(0xFF90FF69);
                            } else {
                              return const Color(0xFFF38016);
                            }
                          }(),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Marketing/ \nSales',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFBAA9A9),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: () {
                            if (widget.parameter7 == true) {
                              return const Color(0xDDBAB9BF);
                            } else if (widget.parameter8 == true) {
                              return const Color(0xFF90FF69);
                            } else {
                              return const Color(0xFFF38016);
                            }
                          }(),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Business \noperation',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFFBAA9A9),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Container(
                        width: 70.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: () {
                            if (widget.parameter9 == true) {
                              return const Color(0xDDBAB9BF);
                            } else if (widget.parameter10 == true) {
                              return const Color(0xFF90FF69);
                            } else {
                              return const Color(0xFFF38016);
                            }
                          }(),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFBAC6D5),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Not Started',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF827474),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF38016),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'In progress',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF827474),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 12.0,
                        height: 12.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF90FF69),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Completed',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF827474),
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
          ],
        ),
      ),
    );
  }
}
