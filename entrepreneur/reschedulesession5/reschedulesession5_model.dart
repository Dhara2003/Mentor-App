import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reschedulesession5_widget.dart' show Reschedulesession5Widget;
import 'package:flutter/material.dart';

class Reschedulesession5Model
    extends FlutterFlowModel<Reschedulesession5Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
