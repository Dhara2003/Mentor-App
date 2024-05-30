import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'oneto_one_chat_widget.dart' show OnetoOneChatWidget;
import 'package:flutter/material.dart';

class OnetoOneChatModel extends FlutterFlowModel<OnetoOneChatWidget> {
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
