import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'admin_page_card_model.dart';
export 'admin_page_card_model.dart';

class AdminPageCardWidget extends StatefulWidget {
  const AdminPageCardWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.bgColor,
    required this.textColor,
  });

  final Widget? icon;
  final String? title;
  final Color? bgColor;
  final Color? textColor;

  @override
  State<AdminPageCardWidget> createState() => _AdminPageCardWidgetState();
}

class _AdminPageCardWidgetState extends State<AdminPageCardWidget> {
  late AdminPageCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminPageCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.0,
      height: 120.0,
      decoration: BoxDecoration(
        color: widget.bgColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Align(
        alignment: const AlignmentDirectional(-1.0, 0.0),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: const Color(0x001A1A24),
                    borderRadius: 35.0,
                    buttonSize: 45.0,
                    fillColor: const Color(0x00E07A5F),
                    icon: widget.icon!,
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Name',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: widget.textColor,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
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
