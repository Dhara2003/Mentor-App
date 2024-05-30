import '/components/componententi1/componententi1_widget.dart';
import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ideasubmission_widget.dart' show IdeasubmissionWidget;
import 'package:flutter/material.dart';

class IdeasubmissionModel extends FlutterFlowModel<IdeasubmissionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Componententi1 component.
  late Componententi1Model componententi1Model;
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    componententi1Model = createModel(context, () => Componententi1Model());
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    componententi1Model.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
