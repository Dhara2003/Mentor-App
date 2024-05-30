import '/components/drawer_admin_comp/drawer_admin_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'message_record_page_widget.dart' show MessageRecordPageWidget;
import 'package:flutter/material.dart';

class MessageRecordPageModel extends FlutterFlowModel<MessageRecordPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // Model for drawerAdminComp component.
  late DrawerAdminCompModel drawerAdminCompModel;

  @override
  void initState(BuildContext context) {
    drawerAdminCompModel = createModel(context, () => DrawerAdminCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerAdminCompModel.dispose();
  }
}
