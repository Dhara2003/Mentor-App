import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/goal_setter_component/goal_setter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entrepreneur_dashboard_copy_widget.dart'
    show EntrepreneurDashboardCopyWidget;
import 'package:flutter/material.dart';

class EntrepreneurDashboardCopyModel
    extends FlutterFlowModel<EntrepreneurDashboardCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;
  // Model for goalSetterComponent component.
  late GoalSetterComponentModel goalSetterComponentModel1;
  // Model for goalSetterComponent component.
  late GoalSetterComponentModel goalSetterComponentModel2;

  @override
  void initState(BuildContext context) {
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
    goalSetterComponentModel1 =
        createModel(context, () => GoalSetterComponentModel());
    goalSetterComponentModel2 =
        createModel(context, () => GoalSetterComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerEntrepreneurCompModel.dispose();
    goalSetterComponentModel1.dispose();
    goalSetterComponentModel2.dispose();
  }
}
