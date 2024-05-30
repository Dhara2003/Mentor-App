import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'upload_download_component_model.dart';
export 'upload_download_component_model.dart';

class UploadDownloadComponentWidget extends StatefulWidget {
  const UploadDownloadComponentWidget({super.key});

  @override
  State<UploadDownloadComponentWidget> createState() =>
      _UploadDownloadComponentWidgetState();
}

class _UploadDownloadComponentWidgetState
    extends State<UploadDownloadComponentWidget> {
  late UploadDownloadComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadDownloadComponentModel());

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
        width: 270.0,
        height: 45.0,
        constraints: const BoxConstraints(
          maxHeight: 46.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).alternate,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0xFF43494E),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).tertiary,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: const Icon(
                FFIcons.kfilePdf,
                color: Color(0xFFED0000),
                size: 20.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                child: Text(
                  'upload documents',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF8F8989),
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ),
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 0.0,
              buttonSize: 46.0,
              icon: const Icon(
                FFIcons.kdownload1,
                color: Color(0xFFEE4D0F),
                size: 22.0,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ],
        ),
      ),
    );
  }
}
