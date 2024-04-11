import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_page_user_widget.dart' show DashboardPageUserWidget;
import 'package:flutter/material.dart';

class DashboardPageUserModel extends FlutterFlowModel<DashboardPageUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
