import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_profile2_widget.dart' show MentorProfile2Widget;
import 'package:flutter/material.dart';

class MentorProfile2Model extends FlutterFlowModel<MentorProfile2Widget> {
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
