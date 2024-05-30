import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'goal_tracker1_model.dart';
export 'goal_tracker1_model.dart';

class GoalTracker1Widget extends StatefulWidget {
  const GoalTracker1Widget({
    super.key,
    required this.stage1Color,
  });

  final Color? stage1Color;

  @override
  State<GoalTracker1Widget> createState() => _GoalTracker1WidgetState();
}

class _GoalTracker1WidgetState extends State<GoalTracker1Widget> {
  late GoalTracker1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalTracker1Model());

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
