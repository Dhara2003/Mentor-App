import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/components/filter_component/filter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'scheduled_sessions_page_widget.dart' show ScheduledSessionsPageWidget;
import 'package:flutter/material.dart';

class ScheduledSessionsPageModel
    extends FlutterFlowModel<ScheduledSessionsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for filterComponent component.
  late FilterComponentModel filterComponentModel;
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;

  @override
  void initState(BuildContext context) {
    filterComponentModel = createModel(context, () => FilterComponentModel());
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    filterComponentModel.dispose();
    drawerMentorCompModel.dispose();
  }
}
