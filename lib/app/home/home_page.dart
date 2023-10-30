import 'dart:developer';

import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:phrase_flow/app/global/theme/theme_mode.dart';
import 'package:phrase_flow/app/profile04/profile04_widget.dart';
import 'package:provider/provider.dart';

import '../../backend/datasource/get.dart';
import '../../backend/datasource/results.dart';

import '../../components/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import '../services/questionary/store/store.dart';
import 'home_widgets.dart';
export 'home_widgets.dart';

class AcompanhamenttodasatividadesWidget extends StatefulWidget {
  const AcompanhamenttodasatividadesWidget({Key? key}) : super(key: key);

  @override
  _AcompanhamenttodasatividadesWidgetState createState() =>
      _AcompanhamenttodasatividadesWidgetState();
}

class _AcompanhamenttodasatividadesWidgetState
    extends State<AcompanhamenttodasatividadesWidget> {
  late AcompanhamenttodasatividadesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  PageController _pageController = PageController();
  int _selectedIndex = 0;
  Future getQuestoes() async {
    final store = Provider.of<QuestionarioStore>(context, listen: false);

    final response = await GetHttpRequestApp(context).makeGetJsonRequest(
      url: "questions",
    );
    Results res = await response.fold((l) async {
      log("l descrição ${l.descricao} ");
      if (l.code == 0) {
        final map = [
          {
            "id": "cln9ejjtg0000yc5zjcn9x5n5",
            "question": "I love to travel and explore new places.",
            "answer": "Eu amo viajar e explorar novos lugares.",
            "type": "translation",
            "createdAt": "2023-10-02T21:27:40.881Z",
            "updatedAt": "2023-10-02T21:27:40.881Z"
          },
          {
            "id": "cln9ejjth0001yc5zuypsw1k5",
            "question": "The sunsets in this city are breathtaking.",
            "answer": "Os pores do sol nesta cidade são deslumbrantes.",
            "type": "translation",
            "createdAt": "2023-10-02T21:27:40.881Z",
            "updatedAt": "2023-10-02T21:27:40.881Z"
          },
          {
            "id": "cln9ejjth0002yc5zse5phjen",
            "question": "Learning new languages is a rewarding experience.",
            "answer": "Aprender novos idiomas é uma experiência gratificante.",
            "type": "translation",
            "createdAt": "2023-10-02T21:27:40.881Z",
            "updatedAt": "2023-10-02T21:27:40.881Z"
          },
          {
            "id": "clo7fsnsp00001k9rucxqkabq",
            "question": "The weather today is beautiful and sunny.",
            "answer": "O tempo hoje está lindo e ensolarado.",
            "type": "translation",
            "createdAt": "2023-10-26T17:06:56.108Z",
            "updatedAt": "2023-10-26T17:06:56.108Z"
          },
          {
            "id": "clo7fsnwu00011k9r7ofmdg1z",
            "question": "I enjoy reading books in my free time.",
            "answer": "Eu gosto de ler livros no meu tempo livre.",
            "type": "translation",
            "createdAt": "2023-10-26T17:06:56.910Z",
            "updatedAt": "2023-10-26T17:06:56.910Z"
          },
          {
            "id": "clo7fsnyx00021k9rb554gcl5",
            "question": "Can you please pass me the salt and pepper?",
            "answer": "Você pode por favor me passar o sal e a pimenta?",
            "type": "translation",
            "createdAt": "2023-10-26T17:06:56.985Z",
            "updatedAt": "2023-10-26T17:06:56.985Z"
          },
          {
            "id": "clo7fso1000031k9raa6u1wcx",
            "question": "Learning a new language is a rewarding challenge.",
            "answer": "Aprender um novo idioma é um desafio gratificante.",
            "type": "translation",
            "createdAt": "2023-10-26T17:06:57.060Z",
            "updatedAt": "2023-10-26T17:06:57.060Z"
          },
          {
            "id": "clo7fso3300041k9rhtxvw3e7",
            "question": "I need directions to the nearest train station.",
            "answer":
                "Preciso de direções para a estação de trem mais próxima.",
            "type": "translation",
            "createdAt": "2023-10-26T17:06:57.135Z",
            "updatedAt": "2023-10-26T17:06:57.135Z"
          }
        ];
        for (var i = 0; i < map.length; i++) {
          store.addQuestion(map[i]);
        }
      }
      return Results(sucess: false, message: "Erro ao buscar questões");
    }, (r) async {
      log("r runtype ${r.runtimeType}");

      for (var i = 0; i < r.length; i++) {
        log("item>> $i");
        store.addQuestion(r[i]);
      }
      return Results(sucess: true, message: "Questões carregadas com sucesso");
    });
    log(name: "QuestionarioStore", "store: ${store.questions.length}");
    log("response>> $response");
    if (res.sucess) return true;
    return false;
  }

  init() async {
    await getQuestoes();
    final pageControlerAux = PageController(initialPage: 0);
    setState(() {
      _pageController = pageControlerAux;
    });
  }

  @override
  void initState() {
    super.initState();
    init();
    _model = createModel(context, () => AcompanhamenttodasatividadesModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Widget? _child;

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = AcompanhamenttodasatividadesWidget();
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          break;
        case 1:
          _child = AcompanhamenttodasatividadesWidget();
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          break;
        case 2:
          _child = Profile04Widget();
          _pageController.animateToPage(
            index,
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    List<IconData> iconsList = [
      Icons.home,
      Icons.play_lesson,
      Icons.person_2_rounded,
    ];

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: ThemeModeApp.of(context).secondaryBackground,
        floatingActionButtonLocation: !responsiveVisibility(
                context: context,
                tablet: false,
                desktop: false,
                tabletLandscape: false)
            ? null
            : FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: !responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
                tabletLandscape: false)
            ? null
            : FluidNavBar(
                icons: [
                  FluidNavBarIcon(svgPath: "assets/images/home.svg"),
                  FluidNavBarIcon(svgPath: "assets/images/recentes.svg"),
                  FluidNavBarIcon(svgPath: "assets/images/person.svg"),
                ],
                onChange: _handleNavigationChange,
                style: FluidNavBarStyle(
                    barBackgroundColor: ThemeModeApp.of(context).primary,
                    iconSelectedForegroundColor: Colors.white,
                    iconUnselectedForegroundColor: Colors.white),
              ),
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
              ))
                HomeWidgets(context).navebarSide(),
              if (responsiveVisibility(
                context: context,
              ))
                Expanded(
                  child: PageView(controller: _pageController, children: [
                    HomeMobileWebPage(
                      model: _model,
                    ),
                    Profile04Widget()
                  ]),
                ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> cardWebList = [
  cardWeb(),
  cardWeb(),
  cardWeb(),
  cardWeb(),
  cardWeb(),
  cardWeb(),
  cardWeb(),
  cardWeb(),
  cardWeb(),
];

List<Widget> cardMobileList = [
  cardMobile(),
  cardMobile(),
  cardMobile(),
  cardMobile(),
  cardMobile(),
  cardMobile(),
  cardMobile(),
  cardMobile(),
];

class HomeMobileWebPage extends StatefulWidget {
  const HomeMobileWebPage({super.key, required this.model});
  final AcompanhamenttodasatividadesModel model;
  @override
  State<HomeMobileWebPage> createState() => _HomeMobileWebPageState();
}

class _HomeMobileWebPageState extends State<HomeMobileWebPage> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.00, -1.00),
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 1170.0,
        ),
        decoration: BoxDecoration(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 20.0, 0.0, 0.0),
                            child: Text(
                              "Olá, Andrew ",
                              style: ThemeModeApp.of(context)
                                  .headlineMedium
                                  .copyWith(
                                    color: ThemeModeApp.of(context).primaryText,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 4.0, 0.0, 0.0),
                            child: Text(
                              "Seus idiomas",
                              textAlign: TextAlign.start,
                              style: ThemeModeApp.of(context)
                                  .labelMedium
                                  .copyWith(
                                    color:
                                        ThemeModeApp.of(context).secondaryText,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      HomeWidgets(context).atetresidiomas(),
                    HomeWidgets(context).botaoAdicionarIdioma(),
                  ],
                ),
              ),
              HomeWidgets(context).filtroProgresso(widget.model),
              if (responsiveVisibility(
                  context: context, phone: false, tablet: false))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: cardWebList.length,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return cardWebList[index];
                    },
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                desktop: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: cardWebList.length,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return cardWebList[index];
                    },
                  ),
                ),
              // // mobile
              if (responsiveVisibility(
                context: context,
                tablet: false,
                desktop: false,
                tabletLandscape: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: cardWebList.length,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      return cardMobileList[index];
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardWeb2 extends StatelessWidget {
  const cardWeb2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500.0,
      height: 89.0,
      constraints: BoxConstraints(
        maxWidth: 870.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: Color(0xFFE5E7EB),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('questionaryTypeWrite');
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 8.0),
                child: RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'oiits2ej' /* Idioma : */,
                        ),
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: FFLocalizations.of(context).getText(
                          'bfi8gidz' /* Espanhol */,
                        ),
                        style: TextStyle(
                          color: Color(0xFF6F61EF),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                    style: ThemeModeApp.of(context).bodyLarge.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'ux1urqjk' /* Avançado */,
                  ),
                  textAlign: TextAlign.end,
                  style: ThemeModeApp.of(context).headlineSmall.copyWith(
                        fontFamily: 'Outfit',
                        color: Color(0xFF15161E),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Divider(
                height: 2.0,
                thickness: 1.0,
                color: Color(0xFFE5E7EB),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0x4D9489F5),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF6F61EF),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 2.0, 2.0, 2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1455274111113-575d080ce8cd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8cHJvZmlsZXxlbnwwfHx8fDE2OTE0NDY5MzJ8MA&ixlib=rb-4.0.3&q=80&w=400',
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0x4D9489F5),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF6F61EF),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 2.0, 2.0, 2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/197/197593.png',
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                    Container(
                      height: 32.0,
                      decoration: BoxDecoration(
                        color: Color(0x4C39D2C0),
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: Color(0xFF39D2C0),
                          width: 2.0,
                        ),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'kfd2tttb' /* Ativo */,
                            ),
                            style: ThemeModeApp.of(context).bodyMedium.copyWith(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF15161E),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cardWeb extends StatelessWidget {
  const cardWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ThemeModeApp.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color.fromARGB(57, 105, 102, 102),
            width: 1.0,
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x3A000000),
              offset: Offset(0.0, 2.0),
            )
          ]),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 10.0, 0.0),
        child: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed('questionaryTypeWriteWidget');
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 0.0),
                child: RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Idioma:",
                        style: ThemeModeApp.of(context).bodyLarge,
                      ),
                      TextSpan(
                        text: " Frances",
                        style: TextStyle(
                          color: Color(0xFF6F61EF),
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                    style: ThemeModeApp.of(context).bodyLarge.copyWith(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Text(
                  "Avançado",
                  textAlign: TextAlign.end,
                  style: ThemeModeApp.of(context).headlineSmall,
                ),
              ),
              Divider(
                height: 2.0,
                thickness: 1.0,
                color: Color(0xFFE5E7EB),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0x4D9489F5),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF6F61EF),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 2.0, 2.0, 2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.network(
                                'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            color: Color(0x4D9489F5),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFF6F61EF),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 2.0, 2.0, 2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40.0),
                              child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/197/197560.png',
                                width: 60.0,
                                height: 60.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 4.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DividerMobile extends StatelessWidget {
  const DividerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: 500.0,
        constraints: BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0xFFE5E7EB),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}

class cardMobile2 extends StatelessWidget {
  const cardMobile2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: 500.0,
        constraints: BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0xFFE5E7EB),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}

class cardMobile extends StatelessWidget {
  const cardMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: 500.0,
        constraints: BoxConstraints(
          maxWidth: 570.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Color(0xFFE5E7EB),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              context.pushNamed('questionaryTypeWriteWidget');
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 8.0),
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: FFLocalizations.of(context).getText(
                            '9c41ukpg' /* Idioma:  */,
                          ),
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: FFLocalizations.of(context).getText(
                            'nd8paf9g' /* Francês */,
                          ),
                          style: TextStyle(
                            color: Color(0xFF6F61EF),
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                      style: ThemeModeApp.of(context).bodyLarge.copyWith(
                            fontFamily: 'Plus Jakarta Sans',
                            color: Color(0xFF15161E),
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Text(
                    FFLocalizations.of(context).getText(
                      'pf8r7jlz' /* Intermediário */,
                    ),
                    textAlign: TextAlign.end,
                    style: ThemeModeApp.of(context).headlineSmall.copyWith(
                          fontFamily: 'Outfit',
                          color: Color(0xFF15161E),
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 8.0),
                      child: RichText(
                        textScaleFactor: MediaQuery.of(context).textScaleFactor,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'd79ofzi8' /* Status:  */,
                              ),
                              style: TextStyle(),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'almv9bkz' /* 5/19 Lições */,
                              ),
                              style: TextStyle(
                                color: Color(0xFF6F61EF),
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                          style: ThemeModeApp.of(context).bodyLarge.copyWith(
                                fontFamily: 'Plus Jakarta Sans',
                                color: Color(0xFF15161E),
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 2.0,
                  thickness: 1.0,
                  color: Color(0xFFE5E7EB),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0x4D9489F5),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFF6F61EF),
                                width: 2.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40.0),
                                child: Image.network(
                                  'https://cdn-icons-png.flaticon.com/512/197/197560.png',
                                  width: 60.0,
                                  height: 60.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(width: 4.0)),
                      ),
                      Container(
                        height: 32.0,
                        decoration: BoxDecoration(
                          color: Color(0x4D9489F5),
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Color(0xFF6F61EF),
                            width: 2.0,
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                '1c84nlu9' /* Continuar */,
                              ),
                              style:
                                  ThemeModeApp.of(context).bodyMedium.copyWith(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF6F61EF),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
