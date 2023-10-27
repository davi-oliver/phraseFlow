import 'package:phrase_flow/app/services/questionary/questionary_home/questionary_widgets.dart';
import 'package:phrase_flow/app/services/questionary/store/store.dart';
import 'package:provider/provider.dart';

import '../../../../components/flutter_flow/flutter_flow_theme.dart';
import '../../../../components/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'questionary_home_model.dart';
export 'questionary_home_model.dart';

class QuestionarioTipos extends StatefulWidget {
  const QuestionarioTipos({Key? key}) : super(key: key);

  @override
  _QuestionarioTiposState createState() => _QuestionarioTiposState();
}

class _QuestionarioTiposState extends State<QuestionarioTipos> {
  late QuestionaryTypeWriteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionaryTypeWriteModel());
    _model.initPageController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final questionarioStore = Provider.of<QuestionarioStore>(
      context,
    );
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: QuestionaryWidgets(context).progressbarLesson(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: _model.pageController,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: questionarioStore.questions.length,
                  itemBuilder: (context, index) {
                    return cardTextTranslate(
                      questionarioStore: questionarioStore,
                      index: index,
                    );
                  },
                ),
              ),
              BotaoVerificar(
                model: _model,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
