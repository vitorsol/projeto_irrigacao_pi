import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_page_adm_widget.dart' show DashboardPageAdmWidget;
import 'package:flutter/material.dart';

class DashboardPageAdmModel extends FlutterFlowModel<DashboardPageAdmWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
