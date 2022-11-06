import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class MinhasAvaliacoesWidget extends StatefulWidget {
  const MinhasAvaliacoesWidget({Key? key}) : super(key: key);

  @override
  _MinhasAvaliacoesWidgetState createState() => _MinhasAvaliacoesWidgetState();
}

class _MinhasAvaliacoesWidgetState extends State<MinhasAvaliacoesWidget> {
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
        title: 'MinhasAvaliacoes',
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
                'ovbesfx5' /* Minhas avaliações */,
              ),
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    children: [
                      if (Theme.of(context).brightness == Brightness.light)
                        Lottie.network(
                          'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          fit: BoxFit.cover,
                          frameRate: FrameRate(60),
                          animate: true,
                        ),
                      if (Theme.of(context).brightness == Brightness.dark)
                        Lottie.network(
                          'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                          width: MediaQuery.of(context).size.width,
                          height: 45,
                          fit: BoxFit.cover,
                          frameRate: FrameRate(60),
                          animate: true,
                        ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '690umsqv' /* Mais recentes primeiro */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).textoBotao,
                            fontSize: 16,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(GETAvaliacaoUserCall.call(
                                    userId: currentUserEmail,
                                  )))
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
                          final listViewGETAvaliacaoUserResponse =
                              snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final listaComentarios = getJsonField(
                                listViewGETAvaliacaoUserResponse.jsonBody,
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
                                  itemCount: listaComentarios.length,
                                  itemBuilder:
                                      (context, listaComentariosIndex) {
                                    final listaComentariosItem =
                                        listaComentarios[listaComentariosIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 10, 10, 10),
                                      child: Card(
                                        clipBehavior:
                                            Clip.antiAliasWithSaveLayer,
                                        color: FlutterFlowTheme.of(context)
                                            .fillBotaoMenu,
                                        elevation: 3,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      getJsonField(
                                                        listaComentariosItem,
                                                        r'''$..placeName''',
                                                      ).toString(),
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
                                                                fontSize: 16,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 0, 10, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  RatingBarIndicator(
                                                    itemBuilder:
                                                        (context, index) =>
                                                            Icon(
                                                      Icons.star_rounded,
                                                      color: Color(0xFFF7AF0C),
                                                    ),
                                                    direction: Axis.horizontal,
                                                    rating: getJsonField(
                                                      listaComentariosItem,
                                                      r'''$..star''',
                                                    ),
                                                    unratedColor:
                                                        Color(0xFF9E9E9E),
                                                    itemCount: 5,
                                                    itemSize: 25,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                15, 15, 15, 15),
                                                    child: AutoSizeText(
                                                      getJsonField(
                                                        listaComentariosItem,
                                                        r'''$..comentario''',
                                                      ).toString(),
                                                      maxLines: 25,
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
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
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
