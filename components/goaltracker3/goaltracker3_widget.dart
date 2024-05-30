import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'goaltracker3_model.dart';
export 'goaltracker3_model.dart';

class Goaltracker3Widget extends StatefulWidget {
  const Goaltracker3Widget({
    super.key,
    required this.stage3Color,
  });

  final Color? stage3Color;

  @override
  State<Goaltracker3Widget> createState() => _Goaltracker3WidgetState();
}

class _Goaltracker3WidgetState extends State<Goaltracker3Widget> {
  late Goaltracker3Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Goaltracker3Model());

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
        width: 78.0,
        height: 13.0,
        decoration: BoxDecoration(
          color: const Color(0xFFF38016),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8.0,
              color: Color(0xFFF38016),
              offset: Offset(0.0, 0.0),
              spreadRadius: 2.0,
            )
          ],
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
