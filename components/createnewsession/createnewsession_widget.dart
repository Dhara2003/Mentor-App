import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'createnewsession_model.dart';
export 'createnewsession_model.dart';

class CreatenewsessionWidget extends StatefulWidget {
  const CreatenewsessionWidget({super.key});

  @override
  State<CreatenewsessionWidget> createState() => _CreatenewsessionWidgetState();
}

class _CreatenewsessionWidgetState extends State<CreatenewsessionWidget> {
  late CreatenewsessionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatenewsessionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: 'Create new session',
        options: FFButtonOptions(
          width: 300.0,
          height: 45.0,
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: const Color(0xFFE9FC9B),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primary,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.bold,
              ),
          elevation: 3.0,
          borderSide: const BorderSide(
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
