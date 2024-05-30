import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'goaltracker2_model.dart';
export 'goaltracker2_model.dart';

class Goaltracker2Widget extends StatefulWidget {
  const Goaltracker2Widget({
    super.key,
    required this.stage2Color,
  });

  final Color? stage2Color;

  @override
  State<Goaltracker2Widget> createState() => _Goaltracker2WidgetState();
}

class _Goaltracker2WidgetState extends State<Goaltracker2Widget> {
  late Goaltracker2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Goaltracker2Model());

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
          color: const Color(0xFF90FF69),
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
    );
  }
}
