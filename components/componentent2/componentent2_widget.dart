import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'componentent2_model.dart';
export 'componentent2_model.dart';

class Componentent2Widget extends StatefulWidget {
  const Componentent2Widget({
    super.key,
    required this.pageName,
  });

  final String? pageName;

  @override
  State<Componentent2Widget> createState() => _Componentent2WidgetState();
}

class _Componentent2WidgetState extends State<Componentent2Widget> {
  late Componentent2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Componentent2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 393.0,
          height: 74.0,
          decoration: const BoxDecoration(
            color: Color(0xFF222A33),
            boxShadow: [
              BoxShadow(
                blurRadius: 2.0,
                color: Color(0xBCD9D9D9),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8cHJvZmlsZSUyMHxlbnwwfHx8fDE3MTMyNzUzMDR8MA&ixlib=rb-4.0.3&q=80&w=1080',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 60.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                        child: Text(
                          dateTimeFormat('MMMEd', getCurrentTimestamp),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF827474),
                                    fontSize: 8.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                      'Hi, Stuart Scott',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            fontSize: 16.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderWidth: 1.0,
                        buttonSize: 40.0,
                        icon: Icon(
                          Icons.notification_add,
                          color: FlutterFlowTheme.of(context).alternate,
                          size: 24.0,
                        ),
                        onPressed: () {
                          print('IconButton pressed ...');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
