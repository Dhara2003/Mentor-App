import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/session_management_card_bottom1/session_management_card_bottom1_widget.dart';
import '/components/session_management_card_bottom2/session_management_card_bottom2_widget.dart';
import '/components/session_management_card_top1/session_management_card_top1_widget.dart';
import '/components/session_management_card_top2/session_management_card_top2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'session_management_entrepreneur_page_widget.dart'
    show SessionManagementEntrepreneurPageWidget;
import 'package:flutter/material.dart';

class SessionManagementEntrepreneurPageModel
    extends FlutterFlowModel<SessionManagementEntrepreneurPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for sessionManagementCardTop1 component.
  late SessionManagementCardTop1Model sessionManagementCardTop1Model;
  // Model for sessionManagementCardBottom1 component.
  late SessionManagementCardBottom1Model sessionManagementCardBottom1Model;
  // Model for sessionManagementCardBottom2 component.
  late SessionManagementCardBottom2Model sessionManagementCardBottom2Model;
  // Model for sessionManagementCardTop2 component.
  late SessionManagementCardTop2Model sessionManagementCardTop2Model;
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    sessionManagementCardTop1Model =
        createModel(context, () => SessionManagementCardTop1Model());
    sessionManagementCardBottom1Model =
        createModel(context, () => SessionManagementCardBottom1Model());
    sessionManagementCardBottom2Model =
        createModel(context, () => SessionManagementCardBottom2Model());
    sessionManagementCardTop2Model =
        createModel(context, () => SessionManagementCardTop2Model());
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sessionManagementCardTop1Model.dispose();
    sessionManagementCardBottom1Model.dispose();
    sessionManagementCardBottom2Model.dispose();
    sessionManagementCardTop2Model.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
