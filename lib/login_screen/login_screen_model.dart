import '/flutter_flow/flutter_flow_util.dart';
import 'login_screen_widget.dart' show LoginScreenWidget;
import 'package:flutter/material.dart';

class LoginScreenModel extends FlutterFlowModel<LoginScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email_field widget.
  FocusNode? emailFieldFocusNode;
  TextEditingController? emailFieldController;
  String? Function(BuildContext, String?)? emailFieldControllerValidator;
  // State field(s) for senha_field widget.
  FocusNode? senhaFieldFocusNode;
  TextEditingController? senhaFieldController;
  late bool senhaFieldVisibility;
  String? Function(BuildContext, String?)? senhaFieldControllerValidator;

  @override
  void initState(BuildContext context) {
    senhaFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailFieldFocusNode?.dispose();
    emailFieldController?.dispose();

    senhaFieldFocusNode?.dispose();
    senhaFieldController?.dispose();
  }
}
