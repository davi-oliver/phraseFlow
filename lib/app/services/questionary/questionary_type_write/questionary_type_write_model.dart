import '../../../../components/flutter_flow/flutter_flow_util.dart';
import 'questionary_type_write_widget.dart' show QuestionaryTypeWriteWidget;
import 'package:flutter/material.dart';

class QuestionaryTypeWriteModel
    extends FlutterFlowModel<QuestionaryTypeWriteWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    unfocusNode.addListener(() {
      if (!unfocusNode.hasFocus) {
        unfocusNode.unfocus();
      }
    });
  }

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
