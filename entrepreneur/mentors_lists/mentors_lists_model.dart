import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/components/filter_component/filter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentors_lists_widget.dart' show MentorsListsWidget;
import 'package:flutter/material.dart';

class MentorsListsModel extends FlutterFlowModel<MentorsListsWidget> {
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
  // Model for drawerEntrepreneurComp component.
  late DrawerEntrepreneurCompModel drawerEntrepreneurCompModel;

  @override
  void initState(BuildContext context) {
    filterComponentModel = createModel(context, () => FilterComponentModel());
    drawerEntrepreneurCompModel =
        createModel(context, () => DrawerEntrepreneurCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    filterComponentModel.dispose();
    drawerEntrepreneurCompModel.dispose();
  }
}
