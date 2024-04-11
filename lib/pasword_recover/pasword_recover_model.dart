import '/flutter_flow/flutter_flow_util.dart';
import 'pasword_recover_widget.dart' show PaswordRecoverWidget;
import 'package:flutter/material.dart';

class PaswordRecoverModel extends FlutterFlowModel<PaswordRecoverWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for email_recover widget.
  FocusNode? emailRecoverFocusNode;
  TextEditingController? emailRecoverController;
  String? Function(BuildContext, String?)? emailRecoverControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailRecoverFocusNode?.dispose();
    emailRecoverController?.dispose();
  }
}
