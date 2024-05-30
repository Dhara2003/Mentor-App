import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_profile_copy_widget.dart' show MentorProfileCopyWidget;
import 'package:flutter/material.dart';

class MentorProfileCopyModel extends FlutterFlowModel<MentorProfileCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for drawerAdminComp component.
  late DrawerAdminCompModel drawerAdminCompModel;

  @override
  void initState(BuildContext context) {
    drawerAdminCompModel = createModel(context, () => DrawerAdminCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerAdminCompModel.dispose();
  }
}
