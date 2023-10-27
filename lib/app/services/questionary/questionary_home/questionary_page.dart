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

  bool initPage = false;

  Future init() async {
    if (initPage) {
      return;
    }
    final questionarioStore =
        Provider.of<QuestionarioStore>(context, listen: false);
    questionarioStore.setControllerPageView(
        await QuestionarioHomeFunctions().initPageController());
    questionarioStore.setSelectedIndex(0);
    calculateProgress(0, questionarioStore.questions.length);
    initPage = true;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  double calculateProgress(int currentPosition, int listLength) {
    print("O length $listLength.");

    if (currentPosition == 0) {
      return 0;
    }
    if (currentPosition >= 0 && currentPosition < listLength) {
      int totalElementos = listLength;
      double porcentagem = (currentPosition + 1) / totalElementos;

      print(
          "O elemento na posição $currentPosition  representa ${porcentagem.toStringAsFixed(2)}% do total.");
      return porcentagem;
    } else {
      print("O índice fornecido está fora dos limites da lista.");
      return 0.0;
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
                                "${calculateProgress(questionarioStoreT.selectedIndex, questionarioStoreT.questions.length) * 100}%",
                                textAlign: TextAlign.start,
                                style: ThemeModeApp.of(context)
                                    .headlineSmall
                                    .copyWith(
                                      color: calculateProgress(
                                                  questionarioStoreT
                                                      .selectedIndex,
                                                  questionarioStoreT
                                                      .questions.length) >=
                                              0.40
                                          ? ThemeModeApp.of(context)
                                              .primaryBtnText
                                          : ThemeModeApp.of(context)
                                              .primaryText,
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
    final questionarioStore =
        Provider.of<QuestionarioStore>(context, listen: false);
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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: ThemeModeApp.of(context).secondaryBackground,
        appBar: progressbarLesson(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Observer(builder: (_) {
                return Expanded(
                  child: PageView.builder(
                    controller: questionarioStoreT.controllerPageView,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: questionarioStoreT.questions.length,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            cardTextTranslate(
                              questionarioStore: questionarioStoreT,
                              index: index,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.3,
                                  left: 16.0,
                                  right: 16),
                              child: Container(
                                width: MediaQuery.of(context).size.width * .6,
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      questionarioStore
                                          .animateControllerPageView();
                                      questionarioStore.controllerPageView
                                          .nextPage(
                                              duration:
                                                  Duration(milliseconds: 500),
                                              curve: Curves.fastOutSlowIn);
                                      questionarioStore
                                          .setSelectedIndex(index + 1);
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Color(0xF313EE0B),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0xF313EE0B),
                                          offset: Offset(0.0, -2.0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0),
                                        topLeft: Radius.circular(16.0),
                                        topRight: Radius.circular(16.0),
                                      ),
                                    ),
                                    alignment:
                                        AlignmentDirectional(0.00, -0.35),
                                    child: Text(
                                      "Verificar",
                                      style: ThemeModeApp.of(context)
                                          .headlineMedium
                                          .copyWith(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
