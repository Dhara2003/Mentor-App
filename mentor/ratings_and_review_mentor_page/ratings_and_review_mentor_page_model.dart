import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/components/filter_component/filter_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ratings_and_review_mentor_page_widget.dart'
    show RatingsAndReviewMentorPageWidget;
import 'package:flutter/material.dart';

class RatingsAndReviewMentorPageModel
    extends FlutterFlowModel<RatingsAndReviewMentorPageWidget> {
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
  // State field(s) for RatingBar widget.
  double? ratingBarValue7;
  // State field(s) for RatingBar widget.
  double? ratingBarValue8;
  // State field(s) for RatingBar widget.
  double? ratingBarValue9;
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;

  @override
  void initState(BuildContext context) {
    filterComponentModel = createModel(context, () => FilterComponentModel());
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    filterComponentModel.dispose();
    drawerMentorCompModel.dispose();
  }
}
