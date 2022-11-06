import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AvaliacaoWidget extends StatefulWidget {
  const AvaliacaoWidget({
    Key? key,
    this.informacoes,
  }) : super(key: key);

  final dynamic informacoes;

  @override
  _AvaliacaoWidgetState createState() => _AvaliacaoWidgetState();
}

class _AvaliacaoWidgetState extends State<AvaliacaoWidget> {
  String? audioVisualValue;
  String? banheiroValue;
  String? entradaPrincipalValue;
  String? circulacaoInternaValue;
  String? estacionamentoValue;
  String? calcadaValue;
  double? ratingBarValue;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: GetDetalhesLocalCall.call(
        place: getJsonField(
          widget.informacoes,
          r'''$..place_id''',
        ).toString(),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingCube(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        final avaliacaoGetDetalhesLocalResponse = snapshot.data!;
        return Title(
            title: 'Avaliacao',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).cor4,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).cor5,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    'wjbduw7u' /* Avaliação de Acessibilidade */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Outfit',
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                actions: [],
                centerTitle: true,
                elevation: 0,
              ),
              body: SafeArea(
                child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      if (Theme.of(context).brightness ==
                                          Brightness.dark)
                                        Lottie.network(
                                          'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 45,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                      if (Theme.of(context).brightness ==
                                          Brightness.light)
                                        Lottie.network(
                                          'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 45,
                                          fit: BoxFit.cover,
                                          animate: true,
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 15, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 24, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dw6r1mee' /* Entrada Principal */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd21ur8q8' /* Possui entrada facilitada? */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qvc7nft5' /* Sim */,
                                                    ),
                                                    Icons.check),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'viexxf8k' /* Não */,
                                                    ),
                                                    Icons.close),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w07lutil' /* Não se aplica */,
                                                    ),
                                                    Icons
                                                        .not_interested_rounded)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  entradaPrincipalValue =
                                                      val?.first),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                iconColor: Colors.white,
                                                iconSize: 16,
                                                elevation: 4,
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0x46AEAEAE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF323B45),
                                                    ),
                                                iconColor: Color(0xFF323B45),
                                                iconSize: 18,
                                                elevation: 4,
                                              ),
                                              chipSpacing: 20,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 15, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 24, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xi7qrgaw' /* Banheiro Acessível */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pbbol8qv' /* Possui banheiro acessível para... */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'teo7oqib' /* Sim */,
                                                    ),
                                                    Icons.check),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v4hp5oj0' /* Não */,
                                                    ),
                                                    Icons.close),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b39gf3av' /* Não se aplica */,
                                                    ),
                                                    Icons
                                                        .not_interested_rounded)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  banheiroValue = val?.first),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                iconColor: Colors.white,
                                                iconSize: 16,
                                                elevation: 4,
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0x46AEAEAE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF323B45),
                                                    ),
                                                iconColor: Color(0xFF323B45),
                                                iconSize: 18,
                                                elevation: 4,
                                              ),
                                              chipSpacing: 20,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 15, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 24, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5ymp7iew' /* Circulação Interna */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oiiyma09' /* O usuário possui autonomia par... */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j4i7xud9' /* Sim */,
                                                    ),
                                                    Icons.check),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9io58ryw' /* Não */,
                                                    ),
                                                    Icons.close),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sz9dr1fo' /* Não se aplica */,
                                                    ),
                                                    Icons
                                                        .not_interested_rounded)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  circulacaoInternaValue =
                                                      val?.first),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                iconColor: Colors.white,
                                                iconSize: 16,
                                                elevation: 4,
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0x46AEAEAE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF323B45),
                                                    ),
                                                iconColor: Color(0xFF323B45),
                                                iconSize: 18,
                                                elevation: 4,
                                              ),
                                              chipSpacing: 20,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 15, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 0, 24, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sawscz68' /* Estacionamento */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 0, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'gvk8ytj8' /* Esse local possui vagas reserv... */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rfqghutc' /* Sim */,
                                                    ),
                                                    Icons.check),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f5fpddtq' /* Não */,
                                                    ),
                                                    Icons.close),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z2ctsmvj' /* Não se aplica */,
                                                    ),
                                                    Icons
                                                        .not_interested_rounded)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  estacionamentoValue =
                                                      val?.first),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                iconColor: Colors.white,
                                                iconSize: 16,
                                                elevation: 4,
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0x46AEAEAE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF323B45),
                                                    ),
                                                iconColor: Color(0xFF323B45),
                                                iconSize: 18,
                                                elevation: 4,
                                              ),
                                              chipSpacing: 20,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 15, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.12,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 24, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '43l8wzvy' /* Calçada */,
                                                    ),
                                                    textAlign: TextAlign.start,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12, 0, 0, 0),
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2w3oejud' /* Possui calçada para fácil aces... */,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                          fontSize: 12,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fduxd7dk' /* Sim */,
                                                    ),
                                                    Icons.check),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'boqmgkfz' /* Não */,
                                                    ),
                                                    Icons.close),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qx92r5gs' /* Não se aplica */,
                                                    ),
                                                    Icons
                                                        .not_interested_rounded)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  calcadaValue = val?.first),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                iconColor: Colors.white,
                                                iconSize: 16,
                                                elevation: 4,
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0x46AEAEAE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF323B45),
                                                    ),
                                                iconColor: Color(0xFF323B45),
                                                iconSize: 18,
                                                elevation: 4,
                                              ),
                                              chipSpacing: 20,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 15, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.14,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 0, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 0, 24, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '1edpj9uu' /* Áudio/Visual */,
                                                      ),
                                                      textAlign:
                                                          TextAlign.start,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText2
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 16,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                12, 0, 0, 0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'k10b3jvg' /* Possui recursos para surdos ou... */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .textoBotao,
                                                                fontSize: 12,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 12, 10),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FlutterFlowChoiceChips(
                                              options: [
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h7u0euer' /* Sim */,
                                                    ),
                                                    Icons.check),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wnbsibnv' /* Não */,
                                                    ),
                                                    Icons.close),
                                                ChipData(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dk9w3xd0' /* Não se aplica */,
                                                    ),
                                                    Icons
                                                        .not_interested_rounded)
                                              ],
                                              onChanged: (val) => setState(() =>
                                                  audioVisualValue =
                                                      val?.first),
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .cor1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                iconColor: Colors.white,
                                                iconSize: 16,
                                                elevation: 4,
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    Color(0x46AEAEAE),
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF323B45),
                                                    ),
                                                iconColor: Color(0xFF323B45),
                                                iconSize: 18,
                                                elevation: 4,
                                              ),
                                              chipSpacing: 20,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 25, 0, 10),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    's9l0gzfi' /* Dê sua nota */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .textoBotao,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              RatingBar.builder(
                                onRatingUpdate: (newValue) {
                                  setState(() => ratingBarValue = newValue);
                                  if (entradaPrincipalValue == 'Sim') {
                                    setState(() =>
                                        FFAppState().entradaPrincipal = 5.0);
                                  } else {
                                    setState(() =>
                                        FFAppState().entradaPrincipal = 1.0);
                                  }

                                  if (banheiroValue == 'Sim') {
                                    setState(() => FFAppState().banheiro = 5.0);
                                  } else {
                                    setState(() => FFAppState().banheiro = 1.0);
                                  }

                                  if (circulacaoInternaValue == 'Sim') {
                                    setState(() =>
                                        FFAppState().circulacaoInterna = 5.0);
                                  } else {
                                    setState(() =>
                                        FFAppState().circulacaoInterna = 1.0);
                                  }

                                  if (estacionamentoValue == 'Sim') {
                                    setState(() =>
                                        FFAppState().estacionamento = 5.0);
                                  } else {
                                    setState(() =>
                                        FFAppState().estacionamento = 1.0);
                                  }

                                  if (calcadaValue == 'Sim') {
                                    setState(() => FFAppState().calcada = 5.0);
                                  } else {
                                    setState(() => FFAppState().calcada = 1.0);
                                  }

                                  if (audioVisualValue == 'Sim') {
                                    setState(
                                        () => FFAppState().audioVisual = 5.0);
                                  } else {
                                    setState(
                                        () => FFAppState().audioVisual = 1.0);
                                  }
                                },
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: Color(0xFFF7AF0C),
                                ),
                                direction: Axis.horizontal,
                                initialRating: ratingBarValue ??= 0,
                                unratedColor: Color(0xFF9E9E9E),
                                itemCount: 5,
                                itemSize: 55,
                                glowColor: Color(0xFFF7AF0C),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 25, 10, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        'ivnf4ts6' /* Comente sua nota */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .textoBotao,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 0, 16, 0),
                                child: Container(
                                  width: double.infinity,
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).cor4,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5,
                                        color: Color(0x34111417),
                                        offset: Offset(0, 2),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).cor3,
                                      width: 1,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 5, 10, 10),
                                    child: TextFormField(
                                      controller: textController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'textController',
                                        Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'f57xz0k5' /* Escreva sua opnião.. */,
                                        ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .textoBotao,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: FFButtonWidget(
                                  onPressed: () async {
                                    if (entradaPrincipalValue ==
                                        'Não se aplica') {
                                      setState(() => FFAppState()
                                          .entradaPrincipalNA = true);
                                      setState(() =>
                                          FFAppState().entradaPrincipal = 0.0);
                                    } else {
                                      setState(() => FFAppState()
                                          .entradaPrincipalNA = false);
                                    }

                                    if (circulacaoInternaValue ==
                                        'Não se aplica') {
                                      setState(() => FFAppState()
                                          .circulacaoInternaNA = true);
                                      setState(() =>
                                          FFAppState().circulacaoInterna = 0.0);
                                    } else {
                                      setState(() => FFAppState()
                                          .circulacaoInternaNA = false);
                                    }

                                    if (banheiroValue == 'Não se aplica') {
                                      setState(() => FFAppState()
                                          .banheiroAcessivelNA = true);
                                      setState(
                                          () => FFAppState().banheiro = 0.0);
                                    } else {
                                      setState(() => FFAppState()
                                          .banheiroAcessivelNA = false);
                                    }

                                    if (estacionamentoValue ==
                                        'Não se aplica') {
                                      setState(() =>
                                          FFAppState().estacionamentoNA = true);
                                      setState(() =>
                                          FFAppState().estacionamento = 0.0);
                                    } else {
                                      setState(() => FFAppState()
                                          .estacionamentoNA = false);
                                    }

                                    if (calcadaValue == 'Não se aplica') {
                                      setState(
                                          () => FFAppState().calcadaNA = true);
                                      setState(
                                          () => FFAppState().calcada = 0.0);
                                    } else {
                                      setState(
                                          () => FFAppState().calcadaNA = false);
                                    }

                                    if (audioVisualValue == 'Não se aplica') {
                                      setState(() =>
                                          FFAppState().audioVisualNA = true);
                                      setState(
                                          () => FFAppState().audioVisual = 0.0);
                                    } else {
                                      setState(() =>
                                          FFAppState().audioVisualNA = false);
                                    }

                                    await POSTavaliacaoCall.call(
                                      placeId: getJsonField(
                                        widget.informacoes,
                                        r'''$..place_id''',
                                      ).toString(),
                                      placeName: getJsonField(
                                        widget.informacoes,
                                        r'''$..name''',
                                      ).toString(),
                                      userId: currentUserEmail,
                                      userName: currentUserDisplayName,
                                      star: ratingBarValue,
                                      comentario: textController!.text,
                                      userImage: currentUserPhoto,
                                      data: dateTimeFormat(
                                        'd/M/y',
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      circulacaoInterna:
                                          FFAppState().circulacaoInterna,
                                      estacionamento:
                                          FFAppState().estacionamento,
                                      calcada: FFAppState().calcada,
                                      audioVisual: FFAppState().audioVisual,
                                      banheiroAcessivel: FFAppState().banheiro,
                                      entradaPrincipal:
                                          FFAppState().entradaPrincipal,
                                      circulacaoInternaNA:
                                          FFAppState().circulacaoInternaNA,
                                      estacionamentoNA:
                                          FFAppState().estacionamentoNA,
                                      calcadaNA: FFAppState().calcadaNA,
                                      audioVisualNA: FFAppState().audioVisualNA,
                                      entradaPrincipalNA:
                                          FFAppState().entradaPrincipalNA,
                                      banheiroAcessivelNA:
                                          FFAppState().banheiroAcessivelNA,
                                    );
                                    context.pop();
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Avaliação feita com sucesso.',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF52B65F),
                                      ),
                                    );
                                  },
                                  text: FFLocalizations.of(context).getText(
                                    '1dnz5qu6' /* Confirmar */,
                                  ),
                                  options: FFButtonOptions(
                                    width: 180,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context).cor5,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
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
            ));
      },
    );
  }
}
