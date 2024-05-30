import '/components/confirm/confirm_widget.dart';
import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reschedulesession4_widget.dart' show Reschedulesession4Widget;
import 'package:flutter/material.dart';

class Reschedulesession4Model
    extends FlutterFlowModel<Reschedulesession4Widget> {
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
  // Model for confirm component.
  late ConfirmModel confirmModel;
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    confirmModel = createModel(context, () => ConfirmModel());
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    confirmModel.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
