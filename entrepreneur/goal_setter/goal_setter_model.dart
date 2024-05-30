import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/goal_setter_component/goal_setter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'goal_setter_widget.dart' show GoalSetterWidget;
import 'package:flutter/material.dart';

class GoalSetterModel extends FlutterFlowModel<GoalSetterWidget> {
  ///  Local state fields for this page.

  bool ideaValColor = true;

  bool marketResearchColor = true;

  bool productServiceColor = true;

  bool marketingSalesColor = true;

  bool bizOpsColor = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;
  // Model for goalSetterComponent component.
  late GoalSetterComponentModel goalSetterComponentModel;
  // State field(s) for IdeaValSwitch widget.
  bool? ideaValSwitchValue;
  // State field(s) for ideaValGroup widget.
  FormFieldController<List<String>>? ideaValGroupValueController;

  List<String>? get ideaValGroupValues => ideaValGroupValueController?.value;
  set ideaValGroupValues(List<String>? v) =>
      ideaValGroupValueController?.value = v;

  // State field(s) for marketResearchSwitch widget.
  bool? marketResearchSwitchValue;
  // State field(s) for marketResearchGroup widget.
  FormFieldController<List<String>>? marketResearchGroupValueController;

  List<String>? get marketResearchGroupValues =>
      marketResearchGroupValueController?.value;
  set marketResearchGroupValues(List<String>? v) =>
      marketResearchGroupValueController?.value = v;

  // State field(s) for productServiceSwitch widget.
  bool? productServiceSwitchValue;
  // State field(s) for productServiceGroup widget.
  FormFieldController<List<String>>? productServiceGroupValueController;

  List<String>? get productServiceGroupValues =>
      productServiceGroupValueController?.value;
  set productServiceGroupValues(List<String>? v) =>
      productServiceGroupValueController?.value = v;

  // State field(s) for marketingSalesSwitch widget.
  bool? marketingSalesSwitchValue;
  // State field(s) for marketingSalesGroup widget.
  FormFieldController<List<String>>? marketingSalesGroupValueController;

  List<String>? get marketingSalesGroupValues =>
      marketingSalesGroupValueController?.value;
  set marketingSalesGroupValues(List<String>? v) =>
      marketingSalesGroupValueController?.value = v;

  // State field(s) for bizOpsSwitch widget.
  bool? bizOpsSwitchValue;
  // State field(s) for bizOpsGroup widget.
  FormFieldController<List<String>>? bizOpsGroupValueController;

  List<String>? get bizOpsGroupValues => bizOpsGroupValueController?.value;
  set bizOpsGroupValues(List<String>? v) =>
      bizOpsGroupValueController?.value = v;

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
