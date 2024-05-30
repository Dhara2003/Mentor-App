import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rescheduleconfirmationpage_widget.dart'
    show RescheduleconfirmationpageWidget;
import 'package:flutter/material.dart';

class RescheduleconfirmationpageModel
    extends FlutterFlowModel<RescheduleconfirmationpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
