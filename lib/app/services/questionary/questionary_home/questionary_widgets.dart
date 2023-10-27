import 'package:flutter/material.dart';
import 'package:phrase_flow/app/global/theme/theme_mode.dart';
import 'package:phrase_flow/app/services/questionary/store/store.dart';

import 'package:phrase_flow/components/flutter_flow/flutter_flow_util.dart';
import 'package:provider/provider.dart';

class QuestionaryWidgets {
  BuildContext context;
  QuestionaryWidgets(this.context);
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
                labelStyle: ThemeModeApp.of(context).headlineSmall.copyWith(
                      fontFamily: 'Outfit',
                      color: ThemeModeApp.of(context).primaryBtnText,
                    ),
                hintText: 'Digite sua resposta',
                hintStyle: ThemeModeApp.of(context).headlineSmall.copyWith(
                      fontFamily: 'Outfit',
                      color: ThemeModeApp.of(context).primaryBtnText,
                    ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ThemeModeApp.of(context).primaryBtnText,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ThemeModeApp.of(context).primaryBtnText,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
              ),
              style: ThemeModeApp.of(context).headlineSmall.copyWith(
                    fontFamily: 'Outfit',
                    color: ThemeModeApp.of(context).primaryBtnText,
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
                color: ThemeModeApp.of(context).primaryBackground,
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
                            color: ThemeModeApp.of(context).tertiary,
                            size: 50.0,
                          ),
                          Flexible(
                            child: Text(
                              "${questionarioStore.questions[this.index].question}",
                              style: ThemeModeApp.of(context).headlineSmall,
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

// ignore: must_be_immutable
class BotaoVerificar extends StatefulWidget {
  BotaoVerificar({
    required this.index,
    super.key,
  });

  int? index;

  @override
  State<BotaoVerificar> createState() => _BotaoVerificarState();
}

class _BotaoVerificarState extends State<BotaoVerificar> {
  @override
  Widget build(BuildContext context) {
    final questionarioStore = Provider.of<QuestionarioStore>(
      context,
    );
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
            questionarioStore.animateControllerPageView();
            questionarioStore.setSelectedIndex(widget.index! + 1);
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
            style: ThemeModeApp.of(context).headlineMedium.copyWith(
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
