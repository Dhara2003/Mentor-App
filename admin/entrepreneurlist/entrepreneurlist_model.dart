import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/components/filter_component/filter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entrepreneurlist_widget.dart' show EntrepreneurlistWidget;
import 'package:flutter/material.dart';

class EntrepreneurlistModel extends FlutterFlowModel<EntrepreneurlistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for filterComponent component.
  late FilterComponentModel filterComponentModel;
  // Model for drawerAdminComp component.
  late DrawerAdminCompModel drawerAdminCompModel;

  @override
  void initState(BuildContext context) {
    filterComponentModel = createModel(context, () => FilterComponentModel());
    drawerAdminCompModel = createModel(context, () => DrawerAdminCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    filterComponentModel.dispose();
    drawerAdminCompModel.dispose();
  }
}
