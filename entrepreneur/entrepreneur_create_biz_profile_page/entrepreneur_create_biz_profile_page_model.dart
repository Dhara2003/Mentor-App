import '/components/drawer_entrepreneur_comp/drawer_entrepreneur_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entrepreneur_create_biz_profile_page_widget.dart'
    show EntrepreneurCreateBizProfilePageWidget;
import 'package:flutter/material.dart';

class EntrepreneurCreateBizProfilePageModel
    extends FlutterFlowModel<EntrepreneurCreateBizProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // State field(s) for PhoneNumUpdate widget.
  FocusNode? phoneNumUpdateFocusNode;
  TextEditingController? phoneNumUpdateTextController;
  String? Function(BuildContext, String?)?
      phoneNumUpdateTextControllerValidator;
  // State field(s) for indutryBGUpdate widget.
  FocusNode? indutryBGUpdateFocusNode;
  TextEditingController? indutryBGUpdateTextController;
  String? Function(BuildContext, String?)?
      indutryBGUpdateTextControllerValidator;
  // State field(s) for previousEmployerUpdate widget.
  FocusNode? previousEmployerUpdateFocusNode;
  TextEditingController? previousEmployerUpdateTextController;
  String? Function(BuildContext, String?)?
      previousEmployerUpdateTextControllerValidator;
  // State field(s) for previousDesignationUpdate widget.
  FocusNode? previousDesignationUpdateFocusNode;
  TextEditingController? previousDesignationUpdateTextController;
  String? Function(BuildContext, String?)?
      previousDesignationUpdateTextControllerValidator;
  // State field(s) for previousExpUpdate widget.
  FocusNode? previousExpUpdateFocusNode;
  TextEditingController? previousExpUpdateTextController;
  String? Function(BuildContext, String?)?
      previousExpUpdateTextControllerValidator;
  // State field(s) for entrepreneurialPhilosophyUpdate widget.
  FocusNode? entrepreneurialPhilosophyUpdateFocusNode;
  TextEditingController? entrepreneurialPhilosophyUpdateTextController;
  String? Function(BuildContext, String?)?
      entrepreneurialPhilosophyUpdateTextControllerValidator;
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
    phoneNumUpdateFocusNode?.dispose();
    phoneNumUpdateTextController?.dispose();

    indutryBGUpdateFocusNode?.dispose();
    indutryBGUpdateTextController?.dispose();

    previousEmployerUpdateFocusNode?.dispose();
    previousEmployerUpdateTextController?.dispose();

    previousDesignationUpdateFocusNode?.dispose();
    previousDesignationUpdateTextController?.dispose();

    previousExpUpdateFocusNode?.dispose();
    previousExpUpdateTextController?.dispose();

    entrepreneurialPhilosophyUpdateFocusNode?.dispose();
    entrepreneurialPhilosophyUpdateTextController?.dispose();

    drawerEntrepreneurCompModel.dispose();
  }
}
