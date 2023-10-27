import 'package:phrase_flow/index.dart';

import '../../../../components/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class QuestionarioHomeFunctions extends FlutterFlowModel<QuestionarioTipos> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.
  Future<PageController> initPageController() async {
    PageController pageControllerAux = PageController(initialPage: 0);

    return pageControllerAux;
  }

  void initState(BuildContext context) {
    unfocusNode.addListener(() {
      if (!unfocusNode.hasFocus) {
        unfocusNode.unfocus();
      }
    });
  }

  List<Widget> pagesList = [
    // QuestionaryTypeWriteWidget(),
    QuestionaryTypeSelectOptionWidget(),
    QuestionaryTipeSelectImageWidget(),
    AnswerIdea2Widget(),
    SuccessPageWidget(),
  ];

  @override
  void dispose() {
    // TODO: implement dispose
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
