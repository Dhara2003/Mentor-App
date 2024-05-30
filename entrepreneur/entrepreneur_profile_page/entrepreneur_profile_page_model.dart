import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entrepreneur_profile_page_widget.dart'
    show EntrepreneurProfilePageWidget;
import 'package:flutter/material.dart';

class EntrepreneurProfilePageModel
    extends FlutterFlowModel<EntrepreneurProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
    tabBarController?.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
