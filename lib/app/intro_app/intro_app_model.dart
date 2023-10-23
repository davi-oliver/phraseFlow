import '../../components/flutter_flow/flutter_flow_util.dart';
import 'intro_app_widget.dart' show IntroAppWidget;
import 'package:flutter/material.dart';

class IntroAppModel extends FlutterFlowModel<IntroAppWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
