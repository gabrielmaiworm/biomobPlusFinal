import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class AvaliacaoEstacionamentoWidget extends StatefulWidget {
  const AvaliacaoEstacionamentoWidget({
    Key? key,
    this.estacionamentoInfo,
  }) : super(key: key);

  final dynamic estacionamentoInfo;

  @override
  _AvaliacaoEstacionamentoWidgetState createState() =>
      _AvaliacaoEstacionamentoWidgetState();
}

class _AvaliacaoEstacionamentoWidgetState
    extends State<AvaliacaoEstacionamentoWidget> {
  ApiCallResponse? apiResult791;
  TextEditingController? textController;
  bool? adequadaValue;
  bool? ausenciaSinalizacaoValue;
  bool? sinalizacaoInadequadaValue;
  bool? impossivelUtilizacaoValue;
  bool? outrosInadequadaValue;
  bool? inexistenteValue;
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
    return Title(
        title: 'AvaliacaoEstacionamento',
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
                'tc0c7e7n' /* Avaliação de Acessibilidade */,
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
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                  if (Theme.of(context).brightness ==
                                      Brightness.light)
                                    Lottie.network(
                                      'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'e96fgfhm' /* Vaga é Adequada */,
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
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: adequadaValue ??= false,
                              onChanged: (newValue) async {
                                setState(() => adequadaValue = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'kcttthe6' /* Vaga acessível */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'dnsez0ue' /* Vaga é Inadequada */,
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
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: ausenciaSinalizacaoValue ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => ausenciaSinalizacaoValue = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'w2mqx8cj' /* Ausência de Sinalização */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: sinalizacaoInadequadaValue ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    sinalizacaoInadequadaValue = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'tx763ida' /* Sinalização Inadequada */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: impossivelUtilizacaoValue ??= false,
                              onChanged: (newValue) async {
                                setState(() =>
                                    impossivelUtilizacaoValue = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'pofzmg61' /* Impossível Utilização */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: outrosInadequadaValue ??= false,
                              onChanged: (newValue) async {
                                setState(
                                    () => outrosInadequadaValue = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'pohexz0p' /* Outros */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'glg2q1km' /* Vaga é Inexistente */,
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
                          Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFF95A1AC),
                            ),
                            child: CheckboxListTile(
                              value: inexistenteValue ??= false,
                              onChanged: (newValue) async {
                                setState(() => inexistenteValue = newValue!);
                              },
                              title: Text(
                                FFLocalizations.of(context).getText(
                                  'jbc0cljy' /* Inexistente */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              activeColor:
                                  FlutterFlowTheme.of(context).primaryColor,
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 25, 10, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    's8qf7mix' /* Quer deixar um comentário? */,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                            child: Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.15,
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
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'zmmi1bnm' /* Escreva sua opnião.. */,
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
                                    focusedErrorBorder: UnderlineInputBorder(
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
                                if (adequadaValue == true) {
                                  setState(() => FFAppState().adequada = 'SIM');
                                } else {
                                  setState(() => FFAppState().adequada = 'NÃO');
                                }

                                if (ausenciaSinalizacaoValue == true) {
                                  setState(() =>
                                      FFAppState().ausenciaSinalizacao = 'SIM');
                                } else {
                                  setState(() =>
                                      FFAppState().ausenciaSinalizacao = 'NÃO');
                                }

                                if (sinalizacaoInadequadaValue == true) {
                                  setState(() => FFAppState()
                                      .sinalizacaoInadequada = 'SIM');
                                } else {
                                  setState(() => FFAppState()
                                      .sinalizacaoInadequada = 'NÃO');
                                }

                                if (impossivelUtilizacaoValue == true) {
                                  setState(() => FFAppState()
                                      .impossivelUtilizacao = 'SIM');
                                } else {
                                  setState(() => FFAppState()
                                      .impossivelUtilizacao = 'NÃO');
                                }

                                if (outrosInadequadaValue == true) {
                                  setState(() =>
                                      FFAppState().outrosInadequada = 'SIM');
                                } else {
                                  setState(() =>
                                      FFAppState().outrosInadequada = 'NÃO');
                                }

                                if (inexistenteValue == true) {
                                  setState(
                                      () => FFAppState().inexistente = 'SIM');
                                } else {
                                  setState(
                                      () => FFAppState().inexistente = 'NÃO');
                                }

                                apiResult791 =
                                    await POSTAvaliacaoEstacionamentoCall.call(
                                  estacionamentoId: getJsonField(
                                    widget.estacionamentoInfo,
                                    r'''$..estacionamentoId''',
                                  ).toString(),
                                  enderecoEstacionamento: getJsonField(
                                    widget.estacionamentoInfo,
                                    r'''$..endereco''',
                                  ).toString(),
                                  comentario: textController!.text,
                                  userId: currentUserUid,
                                  userName: currentUserDisplayName,
                                  ausenciaSinalizacao:
                                      FFAppState().ausenciaSinalizacao,
                                  vagaAdequada: FFAppState().adequada,
                                  sinalizacaoInadequada:
                                      FFAppState().sinalizacaoInadequada,
                                  impossivelUtilizacao:
                                      FFAppState().impossivelUtilizacao,
                                  outrosInadequada:
                                      FFAppState().outrosInadequada,
                                  inexistente: FFAppState().inexistente,
                                );
                                if ((apiResult791?.succeeded ?? true)) {
                                  context.pop();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Avaliação enviada!',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0xFF8CAA6F),
                                    ),
                                  );
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Erro inesperado! Tente novamente.',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor: Color(0xFFCF5656),
                                    ),
                                  );
                                }

                                setState(() {});
                              },
                              text: FFLocalizations.of(context).getText(
                                'qk72rmak' /* Confirmar */,
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
  }
}
