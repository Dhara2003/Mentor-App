import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_page_widget.dart' show SignUpPageWidget;
import 'package:flutter/material.dart';

class SignUpPageModel extends FlutterFlowModel<SignUpPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for SignUpEmail widget.
  FocusNode? signUpEmailFocusNode;
  TextEditingController? signUpEmailTextController;
  String? Function(BuildContext, String?)? signUpEmailTextControllerValidator;
  String? _signUpEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Valid Email is required';
    }

    if (val.length < 10) {
      return 'use a minimum of 10 characters';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for SignupPassword widget.
  FocusNode? signupPasswordFocusNode;
  TextEditingController? signupPasswordTextController;
  late bool signupPasswordVisibility;
  String? Function(BuildContext, String?)?
      signupPasswordTextControllerValidator;
  String? _signupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for ConfirmSignupPassword widget.
  FocusNode? confirmSignupPasswordFocusNode;
  TextEditingController? confirmSignupPasswordTextController;
  late bool confirmSignupPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmSignupPasswordTextControllerValidator;
  String? _confirmSignupPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    signUpEmailTextControllerValidator = _signUpEmailTextControllerValidator;
    signupPasswordVisibility = false;
    signupPasswordTextControllerValidator =
        _signupPasswordTextControllerValidator;
    confirmSignupPasswordVisibility = false;
    confirmSignupPasswordTextControllerValidator =
        _confirmSignupPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    signUpEmailFocusNode?.dispose();
    signUpEmailTextController?.dispose();

    signupPasswordFocusNode?.dispose();
    signupPasswordTextController?.dispose();

    confirmSignupPasswordFocusNode?.dispose();
    confirmSignupPasswordTextController?.dispose();
  }
}
