import 'package:phrase_flow/components/flutter_flow/flutter_flow_model.dart';

import 'intro_app_widget.dart' show IntroAppWidget;
import 'package:flutter/material.dart';

class IntroAppModel extends FlutterFlowModel<IntroAppWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
