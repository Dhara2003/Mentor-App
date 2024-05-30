import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'sessionrequestedsuccessfully_widget.dart'
    show SessionrequestedsuccessfullyWidget;
import 'package:flutter/material.dart';

class SessionrequestedsuccessfullyModel
    extends FlutterFlowModel<SessionrequestedsuccessfullyWidget> {
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
