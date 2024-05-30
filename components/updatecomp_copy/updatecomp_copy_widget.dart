import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'updatecomp_copy_model.dart';
export 'updatecomp_copy_model.dart';

class UpdatecompCopyWidget extends StatefulWidget {
  const UpdatecompCopyWidget({super.key});

  @override
  State<UpdatecompCopyWidget> createState() => _UpdatecompCopyWidgetState();
}

class _UpdatecompCopyWidgetState extends State<UpdatecompCopyWidget> {
  late UpdatecompCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UpdatecompCopyModel());

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
        text: 'Request confirmation',
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
                fontWeight: FontWeight.w600,
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
