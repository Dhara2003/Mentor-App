import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/goal_setter_component/goal_setter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entrepreneur_dashboard_widget.dart' show EntrepreneurDashboardWidget;
import 'package:flutter/material.dart';

class EntrepreneurDashboardModel
    extends FlutterFlowModel<EntrepreneurDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;
  // Model for goalSetterComponent component.
  late GoalSetterComponentModel goalSetterComponentModel;

  @override
  void initState(BuildContext context) {
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
    goalSetterComponentModel =
        createModel(context, () => GoalSetterComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerEntrepreneurCompModel.dispose();
    goalSetterComponentModel.dispose();
  }
}
