import '../backend/api_requests/api_calls.dart';
import '../components/bottom_estacionamento_widget.dart';
import '../components/filtro_estacionamento_widget.dart';
import '../components/tutorial_estacionamento_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EstacionamentoWidget extends StatefulWidget {
  const EstacionamentoWidget({
    Key? key,
    this.infoLocal,
  }) : super(key: key);

  final dynamic infoLocal;

  @override
  _EstacionamentoWidgetState createState() => _EstacionamentoWidgetState();
}

class _EstacionamentoWidgetState extends State<EstacionamentoWidget> {
  Completer<ApiCallResponse>? _apiRequestCompleter;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Estacionamento',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).cor4,
          appBar: // Generated code for this AppBar Widget...
AppBar(
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
    'Vagas de Estacionamento',
    style: FlutterFlowTheme.of(context).title2.override(
          fontFamily: 'Lexend Deca',
          color: Colors.white,
          fontSize: 18,
        ),
  ),
  actions: [
    Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
      child: InkWell(
        onTap: () async {
          await showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: TutorialEstacionamentoWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        child: Icon(
          Icons.help_outline,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  ],
  centerTitle: true,
  elevation: 0,
)
,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            if (Theme.of(context).brightness ==
                                Brightness.light)
                              Lottie.network(
                                'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                fit: BoxFit.cover,
                                animate: true,
                              ),
                            if (Theme.of(context).brightness == Brightness.dark)
                              Lottie.network(
                                'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                                width: MediaQuery.of(context).size.width,
                                height: 45,
                                fit: BoxFit.cover,
                                animate: true,
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'y0gfo51m' /* Vagas Próximas */,
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context).cor3,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 5, 10, 0),
                            child: InkWell(
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:
                                          MediaQuery.of(context).viewInsets,
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.7,
                                        child: FiltroEstacionamentoWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));
                              },
                              child: Container(
                                width: 70,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).cor4,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x39000000),
                                      offset: Offset(0, 1),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Color(0xFF2EBD9B),
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.tune_rounded,
                                      color: Color(0xFF2EBD9B),
                                      size: 25,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(GETEstacionamentoCall.call()))
                            .future,
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50,
                                height: 50,
                                child: SpinKitFadingCube(
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  size: 50,
                                ),
                              ),
                            );
                          }
                          final listViewGETEstacionamentoResponse =
                              snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final listaEstacionamento = getJsonField(
                                listViewGETEstacionamentoResponse.jsonBody,
                                r'''$''',
                              ).toList();
                              return RefreshIndicator(
                                onRefresh: () async {
                                  setState(() => _apiRequestCompleter = null);
                                  await waitForApiRequestCompleter();
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listaEstacionamento.length,
                                  itemBuilder:
                                      (context, listaEstacionamentoIndex) {
                                    final listaEstacionamentoItem =
                                        listaEstacionamento[
                                            listaEstacionamentoIndex];
                                    return Visibility(
                                      visible: getJsonField(
                                            listaEstacionamentoItem,  
                                            r'''$..tipoVaga''',
                                          ) ==
                                          FFAppState().filtroEstacionamento || FFAppState().filtroEstacionamento == 'mostrarTodos',
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5, 0, 5, 10),
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Colors.white,
                                          child: InkWell(
                                            onTap: () async {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                context: context,
                                                builder: (context) {
                                                  return Padding(
                                                    padding:
                                                        MediaQuery.of(context)
                                                            .viewInsets,
                                                    child: Container(
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.4,
                                                      child:
                                                          BottomEstacionamentoWidget(
                                                        estabelecimentoPlace:
                                                            listaEstacionamentoItem,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            },
                                            child: Container(
                                              width: 100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.1,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .fillBotaoMenu,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 10, 10, 10),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 55,
                                                            height: 55,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .iconeBotao,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100),
                                                            ),
                                                            child: Icon(
                                                              Icons
                                                                  .location_on_outlined,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .cor4,
                                                              size: 35,
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    FFLocalizations.of(
                                                                            context)
                                                                        .getText(
                                                                      'rrod6u3o' /* Localização: */,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).iconeBotao,
                                                                          fontSize:
                                                                              16,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            listaEstacionamentoItem,
                                                                            r'''$..endereco''',
                                                                          ).toString().maybeHandleOverflow(
                                                                                maxChars: 30,
                                                                                replacement: '…',
                                                                              ),
                                                                          maxLines:
                                                                              2,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                color: FlutterFlowTheme.of(context).textoBotao,
                                                                                fontSize: 14,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            Icons.info_outline,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .iconeBotao,
                                                            size: 25,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 5, 5, 0),
                          child: InkWell(
                            onTap: () async {
                              context.pushNamed('MapaEstacionamento');
                            },
                            child: Material(
                              color: Colors.transparent,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).cor5,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x39000000),
                                      offset: Offset(0, 1),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.map_outlined,
                                        color: Colors.white,
                                        size: 28,
                                      ),
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'y49nq0ky' /* Ver no mapa */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
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
        ));
  }

  Future waitForApiRequestCompleter({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
