import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/components/filter_component/filter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'active_match_widget.dart' show ActiveMatchWidget;
import 'package:flutter/material.dart';

class ActiveMatchModel extends FlutterFlowModel<ActiveMatchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for filterComponent component.
  late FilterComponentModel filterComponentModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;
  // State field(s) for RatingBar widget.
  double? ratingBarValue3;
  // State field(s) for RatingBar widget.
  double? ratingBarValue4;
  // State field(s) for RatingBar widget.
  double? ratingBarValue5;
  // State field(s) for RatingBar widget.
  double? ratingBarValue6;
  // Model for drawerAdminComp component.
  late DrawerAdminCompModel drawerAdminCompModel;

  @override
  void initState(BuildContext context) {
    filterComponentModel = createModel(context, () => FilterComponentModel());
    drawerAdminCompModel = createModel(context, () => DrawerAdminCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    filterComponentModel.dispose();
    drawerAdminCompModel.dispose();
  }
}
