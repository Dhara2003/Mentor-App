import '/flutter_flow/flutter_flow_util.dart';
import 'entrepreneur_profile2_page_widget.dart'
    show EntrepreneurProfile2PageWidget;
import 'package:flutter/material.dart';

class EntrepreneurProfile2PageModel
    extends FlutterFlowModel<EntrepreneurProfile2PageWidget> {
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
