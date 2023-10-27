import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phrase_flow/app/services/questionary/questionary_home/questionary_home_model.dart';
import 'package:phrase_flow/app/services/questionary/store/store.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_icon_button.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_theme.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_util.dart';

class QuestionaryWidgets {
  BuildContext context;
  QuestionaryWidgets(this.context);

  PreferredSize progressbarLesson() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.0),
      child: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        actions: [],
        flexibleSpace: FlexibleSpaceBar(
          title: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Observer(builder: (_) {
                return Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
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
                              color: FlutterFlowTheme.of(context).error,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pop();
                            },
                          ),
                        ),
                        Expanded(
                          child: LinearPercentIndicator(
                            percent: 0.9,
                            lineHeight: 26.0,
                            animation: true,
                            animateFromLastPercent: true,
                            progressColor: Color(0xFF1F09E3),
                            backgroundColor:
                                FlutterFlowTheme.of(context).accent4,
                            center: Text(
                              FFLocalizations.of(context).getText(
                                'fe5i3sua' /* 50% */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                            ),
                            barRadius: Radius.circular(50.0),
                            padding: EdgeInsets.zero,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })
            ],
          ),
          centerTitle: true,
          expandedTitleScale: 1.0,
        ),
        elevation: 0.0,
      ),
    );
  }
}

class CardInputOrSpeetch extends StatelessWidget {
  const CardInputOrSpeetch({
    super.key,
    required this.questionarioStore,
  });

  final QuestionarioStore questionarioStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              maxLines: 9,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                labelText: 'Resposta',
                labelStyle: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                hintText: 'Digite sua resposta',
                hintStyle: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primaryBtnText,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              ),
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily: 'Outfit',
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                  ),
              onChanged: (value) {
                print('Value changed: $value');
              },
            ),
          ),
        ].divide(SizedBox(width: 10.0)),
      ),
    );
  }
}

class cardTextTranslate extends StatelessWidget {
  const cardTextTranslate({
    super.key,
    required this.index,
    required this.questionarioStore,
  });

  final int index;
  final QuestionarioStore questionarioStore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
      child: ListView(
        padding: EdgeInsets.zero,
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
            child: Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4.0,
                    color: Color(0x320E151B),
                    offset: Offset(0.0, 1.0),
                  )
                ],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(7.0, 8.0, 8.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/image-removebg-preview_(1).png',
                          width: 94.0,
                          height: 216.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            Icons.spatial_audio_off,
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 50.0,
                          ),
                          Flexible(
                            child: Text(
                              "${questionarioStore.questions[this.index].question}",
                              style: FlutterFlowTheme.of(context).headlineSmall,
                            ),
                          ),
                        ].divide(SizedBox(width: 20.0)),
                      ),
                    ),
                  ].divide(SizedBox(width: 20.0)),
                ),
              ),
            ),
          ),
          CardInputOrSpeetch(questionarioStore: questionarioStore)
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class questoesPageWidgets extends StatefulWidget {
  const questoesPageWidgets({
    super.key,
    required this.questionarioStore,
    required this.isSpeech,
    required this.index,
  });

  final QuestionarioStore questionarioStore;
  final bool isSpeech;
  final int index;

  @override
  State<questoesPageWidgets> createState() => _questoesPageWidgetsState();
}

// ignore: camel_case_types
class _questoesPageWidgetsState extends State<questoesPageWidgets> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          CardInputOrSpeetch(questionarioStore: widget.questionarioStore),
        ],
      ),
    );
  }
}

class BotaoVerificar extends StatefulWidget {
  const BotaoVerificar({
    required this.model,
    super.key,
  });

  final QuestionaryTypeWriteModel model;

  @override
  State<BotaoVerificar> createState() => _BotaoVerificarState();
}

class _BotaoVerificarState extends State<BotaoVerificar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          setState(() {
            widget.model.pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
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
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          alignment: AlignmentDirectional(0.00, -0.35),
          child: Text(
            FFLocalizations.of(context).getText(
              'kaegbx3m' /* Verificar */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lexend Deca',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}
