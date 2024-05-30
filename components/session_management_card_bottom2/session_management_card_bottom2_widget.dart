import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'session_management_card_bottom2_model.dart';
export 'session_management_card_bottom2_model.dart';

class SessionManagementCardBottom2Widget extends StatefulWidget {
  const SessionManagementCardBottom2Widget({
    super.key,
    required this.text,
    required this.num,
    required this.bottomContainerColor2,
  });

  final String? text;
  final String? num;
  final Color? bottomContainerColor2;

  @override
  State<SessionManagementCardBottom2Widget> createState() =>
      _SessionManagementCardBottom2WidgetState();
}

class _SessionManagementCardBottom2WidgetState
    extends State<SessionManagementCardBottom2Widget> {
  late SessionManagementCardBottom2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SessionManagementCardBottom2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 152.0,
        height: 150.0,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0xFF43494E),
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: 152.0,
                height: 130.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C232A),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  border: Border.all(
                    color: const Color(0xFF1C232A),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        valueOrDefault<String>(
                          widget.num,
                          '00',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 40.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          widget.text,
                          'Hello',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(height: 10.0)),
                  ),
                ),
              ),
            ),
            Container(
              width: 152.0,
              height: 20.0,
              decoration: BoxDecoration(
                color: widget.bottomContainerColor2,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12.0),
                  bottomRight: Radius.circular(12.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(0.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
