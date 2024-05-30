import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'home_page_card_component_model.dart';
export 'home_page_card_component_model.dart';

class HomePageCardComponentWidget extends StatefulWidget {
  const HomePageCardComponentWidget({
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
  State<HomePageCardComponentWidget> createState() =>
      _HomePageCardComponentWidgetState();
}

class _HomePageCardComponentWidgetState
    extends State<HomePageCardComponentWidget> {
  late HomePageCardComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCardComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        width: 140.0,
        height: 120.0,
        decoration: BoxDecoration(
          color: widget.bgColor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0xFF3E4149),
              offset: Offset(
                0.0,
                4.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: const Color(0x001A1A24),
                    borderRadius: 40.0,
                    buttonSize: 50.0,
                    fillColor: const Color(0x00E07A5F),
                    icon: widget.icon!,
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.title,
                      'Name',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          color: widget.textColor,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
