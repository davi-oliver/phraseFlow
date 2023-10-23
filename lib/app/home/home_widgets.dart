import '../../components/flutter_flow/flutter_flow_util.dart';
import '../../components/flutter_flow/form_field_controller.dart';
import 'home_page.dart' show AcompanhamenttodasatividadesWidget;
import 'package:flutter/material.dart';

class AcompanhamenttodasatividadesModel
    extends FlutterFlowModel<AcompanhamenttodasatividadesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue;
  FormFieldController<List<String>>? choiceChipsValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
