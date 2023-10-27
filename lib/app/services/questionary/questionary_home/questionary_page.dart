import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phrase_flow/app/global/theme/theme_mode.dart';
import 'package:phrase_flow/app/services/questionary/questionary_home/questionary_home_model.dart';
import 'package:phrase_flow/app/services/questionary/questionary_home/questionary_widgets.dart';
import 'package:phrase_flow/app/services/questionary/store/store.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_icon_button.dart';
import 'package:provider/provider.dart';

import '../../../../components/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuestionarioTipos extends StatefulWidget {
  const QuestionarioTipos({Key? key}) : super(key: key);

  @override
  _QuestionarioTiposState createState() => _QuestionarioTiposState();
}

class _QuestionarioTiposState extends State<QuestionarioTipos> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // Inicialize a variável aqui
    init();
  }

  Future init() async {
    final questionarioStore =
        Provider.of<QuestionarioStore>(context, listen: false);
    questionarioStore.setControllerPageView(
        await QuestionarioHomeFunctions().initPageController());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  double calculateProgress(int currentPosition, int listLength) {
    if (currentPosition == 0) {
      return 0.0;
    } else {
      return (currentPosition / listLength) * 100.0;
    }
  }

  PreferredSize progressbarLesson() {
    final questionarioStoreT =
        Provider.of<QuestionarioStore>(context, listen: true);
    return PreferredSize(
      preferredSize: Size.fromHeight(120.0),
      child: AppBar(
        backgroundColor: ThemeModeApp.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          title: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: Observer(builder: (_) {
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.close,
                                color: ThemeModeApp.of(context).error,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                          Expanded(
                            child: LinearPercentIndicator(
                              percent: calculateProgress(
                                  questionarioStoreT.selectedIndex,
                                  questionarioStoreT.questions.length),
                              lineHeight: 26.0,
                              animation: true,
                              animateFromLastPercent: true,
                              progressColor: Color(0xFF1F09E3),
                              backgroundColor: ThemeModeApp.of(context).accent4,
                              center: Text(
                                FFLocalizations.of(context).getText(
                                  'fe5i3sua' /* 50% */,
                                ),
                                textAlign: TextAlign.start,
                                style: ThemeModeApp.of(context)
                                    .headlineSmall
                                    .copyWith(
                                      fontFamily: 'Outfit',
                                      color: ThemeModeApp.of(context)
                                          .primaryBtnText,
                                    ),
                              ),
                              barRadius: Radius.circular(50.0),
                              padding: EdgeInsets.zero,
                            ),
                          ),
                        ],
                      ),
                    );
                  }))
            ],
          ),
          centerTitle: true,
          expandedTitleScale: 1.0,
        ),
        elevation: 0.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final questionarioStoreT =
        Provider.of<QuestionarioStore>(context, listen: true);
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => QuestionarioHomeFunctions().unfocusNode.canRequestFocus
          ? FocusScope.of(context)
              .requestFocus(QuestionarioHomeFunctions().unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Observer(builder: (_) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: ThemeModeApp.of(context).secondaryBackground,
          appBar: progressbarLesson(),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: questionarioStoreT.controllerPageView,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: questionarioStoreT.questions.length,
                    itemBuilder: (context, index) {
                      return cardTextTranslate(
                        questionarioStore: questionarioStoreT,
                        index: index,
                      );
                    },
                  ),
                ),
                BotaoVerificar(
                  index: questionarioStoreT.controllerPageView.page!.toInt(),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
