import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'oneto_one_chat_copy_widget.dart' show OnetoOneChatCopyWidget;
import 'package:flutter/material.dart';

class OnetoOneChatCopyModel extends FlutterFlowModel<OnetoOneChatCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;

  @override
  void initState(BuildContext context) {
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerMentorCompModel.dispose();
  }
}
