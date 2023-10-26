import 'package:flutter/material.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_choice_chips.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:phrase_flow/components/flutter_flow/flutter_flow_widgets.dart';

import '../../components/flutter_flow/flutter_flow_util.dart';
import '../../components/flutter_flow/form_field_controller.dart';
import 'home_page.dart' show AcompanhamenttodasatividadesWidget;

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
}

class HomeWidgets {
  BuildContext context;
  HomeWidgets(this.context);

  Widget filtroProgresso(
    _model,
  ) {
    return StatefulBuilder(builder: (context, StateSetter setState) {
      return Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Container(
          width: double.infinity,
          constraints: BoxConstraints(
            maxWidth: double.infinity,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFF1F4F8),
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Color(0xFFE5E7EB),
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'ulpc575p' /* Filtro */,
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: Color(0xFF606A85),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                FlutterFlowChoiceChips(
                  options: [
                    ChipData(FFLocalizations.of(context).getText(
                      '4ad1agn0' /* Ativo */,
                    )),
                    ChipData(FFLocalizations.of(context).getText(
                      'vte5v4i0' /* Em progresso */,
                    ))
                  ],
                  onChanged: (val) =>
                      setState(() => _model.choiceChipsValue = val?.first),
                  selectedChipStyle: ChipStyle(
                    backgroundColor: Color(0x4C39D2C0),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF15161E),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                    iconColor: Color(0xFF15161E),
                    iconSize: 18.0,
                    elevation: 0.0,
                    borderColor: Color(0xFF39D2C0),
                    borderWidth: 1.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor: Color(0xFFF1F4F8),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Color(0xFF606A85),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                        ),
                    iconColor: Color(0xFF606A85),
                    iconSize: 18.0,
                    elevation: 0.0,
                    borderColor: Color(0xFFE5E7EB),
                    borderWidth: 1.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  chipSpacing: 12.0,
                  rowSpacing: 12.0,
                  multiselect: false,
                  initialized: _model.choiceChipsValue != null,
                  alignment: WrapAlignment.start,
                  controller: _model.choiceChipsValueController ??=
                      FormFieldController<List<String>>(
                    [
                      FFLocalizations.of(context).getText(
                        'njxytw6r' /* Ativo */,
                      )
                    ],
                  ),
                  wrapped: true,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget atetresidiomas() {
    return Row(
      mainAxisSize: MainAxisSize.max,
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
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Image.network(
                'https://images.vexels.com/media/users/3/163966/isolated/preview/6ecbb5ec8c121c0699c9b9179d6b24aa-circulo-do-icone-do-idioma-da-bandeira-da-inglaterra.png',
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
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
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
            padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
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
    );
  }

  Widget botaoAdicionarIdioma() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: FFLocalizations.of(context).getText(
          'zdj4b3gf' /* Adicionar  */,
        ),
        options: FFButtonOptions(
          height: 40.0,
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Color(0xFF6F61EF),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Plus Jakarta Sans',
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
          elevation: 3.0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }

  Widget navebarSide() {
    return Container(
      width: 270.0,
      height: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFF1F4F8),
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: Color(0xFFE5E7EB),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/WhatsApp_Image_2023-08-31_at_21.37.07-removebg-preview.png',
                      width: 73.0,
                      height: 73.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'gd5lzz13' /* PhaseFlow */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Outfit',
                                color: Color(0xFF15161E),
                                fontSize: 24.0,
                                fontWeight: FontWeight.w500,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 12.0,
              thickness: 2.0,
              color: Color(0xFFE5E7EB),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'frypqq9p' /* Ferramentas  */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.space_dashboard,
                                color: Color(0xFFFF6D0A),
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'kvpv3iy4' /* Dashboard */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF15161E),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.forum_rounded,
                                color: Color(0xFFFF6D0A),
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'ao1omrei' /* Chats */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF15161E),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.work,
                                color: Color(0xFFFF6D0A),
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '3mqmdbhb' /* Projects */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF15161E),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0x4D9489F5),
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.receipt_rounded,
                                color: Color(0xFF6F61EF),
                                size: 24.0,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'dxapex6d' /* Recent Orders */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF15161E),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 32.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFF6F61EF),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 4.0, 8.0, 4.0),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        'kfjf7952' /* 12 */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: Colors.white,
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
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'bnsbpoi8' /* Configurações */,
                        ),
                        style:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.attach_money_rounded,
                                color: Color(0xFFFF6D0A),
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'b34yohri' /* Meus Planos */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF15161E),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                        width: double.infinity,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 6.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.wifi_tethering_rounded,
                                color: Color(0xFFFF6D0A),
                                size: 24.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'h17xoc6w' /* Explorar */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: Color(0xFF15161E),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
              ),
            ),
            Divider(
              height: 12.0,
              thickness: 2.0,
              color: Color(0xFFE5E7EB),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0x4D9489F5),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: Color(0xFF6F61EF),
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: CachedNetworkImage(
                          fadeInDuration: Duration(milliseconds: 500),
                          fadeOutDuration: Duration(milliseconds: 500),
                          imageUrl:
                              'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                          width: 44.0,
                          height: 44.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'rg2bctf2' /* Andrew D. */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: Color(0xFF15161E),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              '8fme7tx9' /* admin@gmail.com */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: Color(0xFF606A85),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.menu_open_rounded,
                    color: Color(0xFF606A85),
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
