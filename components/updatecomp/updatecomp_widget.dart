import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'updatecomp_model.dart';
export 'updatecomp_model.dart';

class UpdatecompWidget extends StatefulWidget {
  const UpdatecompWidget({super.key});

  @override
  State<UpdatecompWidget> createState() => _UpdatecompWidgetState();
}

class _UpdatecompWidgetState extends State<UpdatecompWidget> {
  late UpdatecompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdatecompModel());

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
        text: 'Update',
        options: FFButtonOptions(
          width: 303.0,
          height: 47.0,
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: const Color(0xFFE9FC9B),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Poppins',
                color: FlutterFlowTheme.of(context).primary,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
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
