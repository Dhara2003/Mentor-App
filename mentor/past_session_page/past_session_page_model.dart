import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'past_session_page_widget.dart' show PastSessionPageWidget;
import 'package:flutter/material.dart';

class PastSessionPageModel extends FlutterFlowModel<PastSessionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;

  @override
  void initState(BuildContext context) {
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerMentorCompModel.dispose();
  }
}
