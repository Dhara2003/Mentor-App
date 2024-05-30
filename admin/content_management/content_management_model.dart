import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'content_management_widget.dart' show ContentManagementWidget;
import 'package:flutter/material.dart';

class ContentManagementModel extends FlutterFlowModel<ContentManagementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerAdminComp component.
  late DrawerAdminCompModel drawerAdminCompModel;

  @override
  void initState(BuildContext context) {
    drawerAdminCompModel = createModel(context, () => DrawerAdminCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerAdminCompModel.dispose();
  }
}
