import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/updatecomp_copy/updatecomp_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_session1_widget.dart' show CreateSession1Widget;
import 'package:flutter/material.dart';

class CreateSession1Model extends FlutterFlowModel<CreateSession1Widget> {
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
  // State field(s) for Checkbox widget.
  bool? checkboxValue5;
  // State field(s) for Checkbox widget.
  bool? checkboxValue6;
  // State field(s) for Checkbox widget.
  bool? checkboxValue7;
  // Model for updatecompCopy component.
  late UpdatecompCopyModel updatecompCopyModel;
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    updatecompCopyModel = createModel(context, () => UpdatecompCopyModel());
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    updatecompCopyModel.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
