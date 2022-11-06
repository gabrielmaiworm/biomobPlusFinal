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

class ComentariosWidget extends StatefulWidget {
  const ComentariosWidget({
    Key? key,
    this.infoLocal,
  }) : super(key: key);

  final dynamic infoLocal;

  @override
  _ComentariosWidgetState createState() => _ComentariosWidgetState();
}

class _ComentariosWidgetState extends State<ComentariosWidget> {
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
        title: 'Comentarios',
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
                'siia3b7o' /* Comentários */,
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '4hwjq4gy' /* Mais recentes primeiro */,
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
                                  ..complete(GETAvaliacaoPorPlaceIDCall.call(
                                    placeId: getJsonField(
                                      widget.infoLocal,
                                      r'''$..place_id''',
                                    ).toString(),
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
                          final listViewGETAvaliacaoPorPlaceIDResponse =
                              snapshot.data!;
                          return Builder(
                            builder: (context) {
                              final listaComentarios = getJsonField(
                                listViewGETAvaliacaoPorPlaceIDResponse.jsonBody,
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
                                        elevation: 30,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 20, 0),
                                                    child: Container(
                                                      width: 55,
                                                      height: 55,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.network(
                                                        getJsonField(
                                                          listaComentariosItem,
                                                          r'''$..user_image''',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      listaComentariosItem,
                                                      r'''$..userName''',
                                                    )
                                                        .toString()
                                                        .maybeHandleOverflow(
                                                          maxChars: 30,
                                                          replacement: '…',
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
                                                          fontSize: 17,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                  Text(
                                                    getJsonField(
                                                      listaComentariosItem,
                                                      r'''$..data''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textoBotao,
                                                        ),
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
                                                                10, 10, 10, 10),
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
