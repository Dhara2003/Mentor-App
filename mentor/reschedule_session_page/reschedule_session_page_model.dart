import '/components/drawer_mentor_comp/drawer_mentor_comp_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reschedule_session_page_widget.dart' show RescheduleSessionPageWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RescheduleSessionPageModel
    extends FlutterFlowModel<RescheduleSessionPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for drawerMentorComp component.
  late DrawerMentorCompModel drawerMentorCompModel;
  DateTime? datePicked;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];
  List<String> uploadedFileUrls = [];

  @override
  void initState(BuildContext context) {
    drawerMentorCompModel = createModel(context, () => DrawerMentorCompModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    drawerMentorCompModel.dispose();
  }
}
