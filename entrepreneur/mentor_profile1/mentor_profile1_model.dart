import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_profile1_widget.dart' show MentorProfile1Widget;
import 'package:flutter/material.dart';

class MentorProfile1Model extends FlutterFlowModel<MentorProfile1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
