import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'goaltracker5_model.dart';
export 'goaltracker5_model.dart';

class Goaltracker5Widget extends StatefulWidget {
  const Goaltracker5Widget({
    super.key,
    required this.stage5Color,
  });

  final Color? stage5Color;

  @override
  State<Goaltracker5Widget> createState() => _Goaltracker5WidgetState();
}

class _Goaltracker5WidgetState extends State<Goaltracker5Widget> {
  late Goaltracker5Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Goaltracker5Model());

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
