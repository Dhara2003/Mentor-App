import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/goal_setter_component/goal_setter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'goaltracker_widget.dart' show GoaltrackerWidget;
import 'package:flutter/material.dart';

class GoaltrackerModel extends FlutterFlowModel<GoaltrackerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for goalSetterComponent component.
  late GoalSetterComponentModel goalSetterComponentModel;
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    goalSetterComponentModel =
        createModel(context, () => GoalSetterComponentModel());
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    goalSetterComponentModel.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
