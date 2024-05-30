import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'notification_entrepreneur_page_widget.dart'
    show NotificationEntrepreneurPageWidget;
import 'package:flutter/material.dart';

class NotificationEntrepreneurPageModel
    extends FlutterFlowModel<NotificationEntrepreneurPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
