import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'goaltracker4_model.dart';
export 'goaltracker4_model.dart';

class Goaltracker4Widget extends StatefulWidget {
  const Goaltracker4Widget({
    super.key,
    required this.stage4Color,
  });

  final Color? stage4Color;

  @override
  State<Goaltracker4Widget> createState() => _Goaltracker4WidgetState();
}

class _Goaltracker4WidgetState extends State<Goaltracker4Widget> {
  late Goaltracker4Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Goaltracker4Model());

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
      alignment: const AlignmentDirectional(-1.0, 1.0),
      child: Container(
        width: 70.93,
        height: 12.08,
        decoration: BoxDecoration(
          color: const Color(0xFFBAC6D5),
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
