import '/components/admin_page_card/admin_page_card_widget.dart';
import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/components/home_page_card_component/home_page_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_homepage_widget.dart' show AdminHomepageWidget;
import 'package:flutter/material.dart';

class AdminHomepageModel extends FlutterFlowModel<AdminHomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AdminPageCard component.
  late AdminPageCardModel adminPageCardModel1;
  // Model for AdminPageCard component.
  late AdminPageCardModel adminPageCardModel2;
  // Model for AdminPageCard component.
  late AdminPageCardModel adminPageCardModel3;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel1;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel2;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel3;
  // Model for homePageCardComponent component.
  late HomePageCardComponentModel homePageCardComponentModel4;
  // Model for drawerAdminComp component.
  late DrawerAdminCompModel drawerAdminCompModel;

  @override
  void initState(BuildContext context) {
    adminPageCardModel1 = createModel(context, () => AdminPageCardModel());
    adminPageCardModel2 = createModel(context, () => AdminPageCardModel());
    adminPageCardModel3 = createModel(context, () => AdminPageCardModel());
    homePageCardComponentModel1 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel2 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel3 =
        createModel(context, () => HomePageCardComponentModel());
    homePageCardComponentModel4 =
        createModel(context, () => HomePageCardComponentModel());
    drawerAdminCompModel = createModel(context, () => DrawerAdminCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    adminPageCardModel1.dispose();
    adminPageCardModel2.dispose();
    adminPageCardModel3.dispose();
    homePageCardComponentModel1.dispose();
    homePageCardComponentModel2.dispose();
    homePageCardComponentModel3.dispose();
    homePageCardComponentModel4.dispose();
    drawerAdminCompModel.dispose();
  }
}
