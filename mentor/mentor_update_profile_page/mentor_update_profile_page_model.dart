import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mentor_update_profile_page_widget.dart'
    show MentorUpdateProfilePageWidget;
import 'package:flutter/material.dart';

class MentorUpdateProfilePageModel
    extends FlutterFlowModel<MentorUpdateProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for phoneNumTextField widget.
  FocusNode? phoneNumTextFieldFocusNode;
  TextEditingController? phoneNumTextFieldTextController;
  String? Function(BuildContext, String?)?
      phoneNumTextFieldTextControllerValidator;
  // State field(s) for emailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for DoBTextField widget.
  FocusNode? doBTextFieldFocusNode;
  TextEditingController? doBTextFieldTextController;
  String? Function(BuildContext, String?)? doBTextFieldTextControllerValidator;
  // State field(s) for genderTextField widget.
  FocusNode? genderTextFieldFocusNode;
  TextEditingController? genderTextFieldTextController;
  String? Function(BuildContext, String?)?
      genderTextFieldTextControllerValidator;
  // State field(s) for startupEditField widget.
  FocusNode? startupEditFieldFocusNode1;
  TextEditingController? startupEditFieldTextController1;
  String? Function(BuildContext, String?)?
      startupEditFieldTextController1Validator;
  // State field(s) for industryBgEditField widget.
  FocusNode? industryBgEditFieldFocusNode;
  TextEditingController? industryBgEditFieldTextController;
  String? Function(BuildContext, String?)?
      industryBgEditFieldTextControllerValidator;
  // State field(s) for startupEditField widget.
  FocusNode? startupEditFieldFocusNode2;
  TextEditingController? startupEditFieldTextController2;
  String? Function(BuildContext, String?)?
      startupEditFieldTextController2Validator;
  // State field(s) for startupEditField widget.
  FocusNode? startupEditFieldFocusNode3;
  TextEditingController? startupEditFieldTextController3;
  String? Function(BuildContext, String?)?
      startupEditFieldTextController3Validator;
  // State field(s) for startupEditField widget.
  FocusNode? startupEditFieldFocusNode4;
  TextEditingController? startupEditFieldTextController4;
  String? Function(BuildContext, String?)?
      startupEditFieldTextController4Validator;
  // State field(s) for startupEditField widget.
  FocusNode? startupEditFieldFocusNode5;
  TextEditingController? startupEditFieldTextController5;
  String? Function(BuildContext, String?)?
      startupEditFieldTextController5Validator;
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;

  @override
  void initState(BuildContext context) {
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    phoneNumTextFieldFocusNode?.dispose();
    phoneNumTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    doBTextFieldFocusNode?.dispose();
    doBTextFieldTextController?.dispose();

    genderTextFieldFocusNode?.dispose();
    genderTextFieldTextController?.dispose();

    startupEditFieldFocusNode1?.dispose();
    startupEditFieldTextController1?.dispose();

    industryBgEditFieldFocusNode?.dispose();
    industryBgEditFieldTextController?.dispose();

    startupEditFieldFocusNode2?.dispose();
    startupEditFieldTextController2?.dispose();

    startupEditFieldFocusNode3?.dispose();
    startupEditFieldTextController3?.dispose();

    startupEditFieldFocusNode4?.dispose();
    startupEditFieldTextController4?.dispose();

    startupEditFieldFocusNode5?.dispose();
    startupEditFieldTextController5?.dispose();

    drawerMentorCompModel.dispose();
  }
}
