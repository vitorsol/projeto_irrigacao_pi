import '/flutter_flow/flutter_flow_util.dart';
import 'add_lavoura_widget.dart' show AddLavouraWidget;
import 'package:flutter/material.dart';

class AddLavouraModel extends FlutterFlowModel<AddLavouraWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for email_recover widget.
  FocusNode? emailRecoverFocusNode1;
  TextEditingController? emailRecoverController1;
  String? Function(BuildContext, String?)? emailRecoverController1Validator;
  // State field(s) for email_recover widget.
  FocusNode? emailRecoverFocusNode2;
  TextEditingController? emailRecoverController2;
  String? Function(BuildContext, String?)? emailRecoverController2Validator;
  // State field(s) for email_recover widget.
  FocusNode? emailRecoverFocusNode3;
  TextEditingController? emailRecoverController3;
  String? Function(BuildContext, String?)? emailRecoverController3Validator;
  // State field(s) for email_recover widget.
  FocusNode? emailRecoverFocusNode4;
  TextEditingController? emailRecoverController4;
  String? Function(BuildContext, String?)? emailRecoverController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    emailRecoverFocusNode1?.dispose();
    emailRecoverController1?.dispose();

    emailRecoverFocusNode2?.dispose();
    emailRecoverController2?.dispose();

    emailRecoverFocusNode3?.dispose();
    emailRecoverController3?.dispose();

    emailRecoverFocusNode4?.dispose();
    emailRecoverController4?.dispose();
  }
}
