import 'package:bioplus_api_login/components/lista_vazia_widget.dart';

import '../backend/api_requests/api_calls.dart';
import '../components/bottom_emprego_widget.dart';
import '../components/tutorial_emprego_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class VagasEmpregoWidget extends StatefulWidget {
  const VagasEmpregoWidget({Key? key}) : super(key: key);

  @override
  _VagasEmpregoWidgetState createState() => _VagasEmpregoWidgetState();
}

class _VagasEmpregoWidgetState extends State<VagasEmpregoWidget> {
  Completer<ApiCallResponse>? _apiRequestCompleter;
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
    return Title(
        title: 'VagasEmprego',
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
    'Vagas de emprego',
    style: FlutterFlowTheme.of(context).title2.override(
          fontFamily: 'Lexend Deca',
          color: Colors.white,
          fontSize: 22,
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
                  child: TutorialEmpregoWidget(),
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 5, 5, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
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
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 4),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: textController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            'textController',
                                            Duration(milliseconds: 50),
                                            () => setState(() {}),
                                          ),
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: true,
                                            hintText:
                                                FFLocalizations.of(context)
                                                    .getText(
                                              'zejy6tzu' /* Procure algo aqui... */,
                                            ),
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
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
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 16, 0, 16),
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiaryColor,
                                              size: 20,
                                            ),
                                            suffixIcon: textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      textController?.clear();
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color: Color(0xFF757575),
                                                      size: 22,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xD6000000),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: FutureBuilder<ApiCallResponse>(
                      future:
                          (_apiRequestCompleter ??= Completer<ApiCallResponse>()
                                ..complete(GetEmpregoCall.call()))
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
                        final listViewGetEmpregoResponse = snapshot.data!;
                        return Builder(
                          builder: (context) {
                            final result = getJsonField(
                              listViewGetEmpregoResponse.jsonBody,
                              r'''$''',
                            ).toList();
                            if (result.isEmpty) {
                              return ListaVaziaWidget();
                            }
                            return RefreshIndicator(
                              onRefresh: () async {
                                setState(() => _apiRequestCompleter = null);
                                await waitForApiRequestCompleter();
                              },
                              child: ListView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: result.length,
                                itemBuilder: (context, resultIndex) {
                                  final resultItem = result[resultIndex];
                                  return Visibility(
                                    visible: functions.showSearchResult(
                                      textController?.text,
                                      getJsonField(
                                        resultItem,
                                        r'''$..cargo''',
                                      ).toString()), 
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 0, 5, 10),
                                      child: InkWell(
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.white,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.55,
                                                  child: BottomEmpregoWidget(
                                                    estabelecimentoPlace:
                                                        resultItem,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Card(
                                          clipBehavior:
                                              Clip.antiAliasWithSaveLayer,
                                          color: Colors.white,
                                          child: Container(
                                            width: 100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.16,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(10, 10, 10, 10),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 10, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 10, 0),
                                                          child: Stack(
                                                            children: [
                                                              if (getJsonField(
                                                                    resultItem,
                                                                    r'''$..logo''',
                                                                  ) !=
                                                                  null)
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  child: Image
                                                                      .network(
                                                                    getJsonField(
                                                                      resultItem,
                                                                      r'''$..logo''',
                                                                    ),
                                                                    width: 55,
                                                                    height: 55,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              if (getJsonField(
                                                                    resultItem,
                                                                    r'''$..logo''',
                                                                  ) ==
                                                                  null)
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  child: Image
                                                                      .network(
                                                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC3Eu038Gt_v-K8OPe_-NzoA4a52_fggGhHR-8LiKM3bAWhQYG67vJdE9spJBCjWHzSo0&usqp=CAU',
                                                                    width: 55,
                                                                    height: 55,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              getJsonField(
                                                                resultItem,
                                                                r'''$..cargo''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars:
                                                                        30,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Color(
                                                                        0xFF32A089),
                                                                    fontSize:
                                                                        18,
                                                                  ),
                                                            ),
                                                            Text(
                                                              getJsonField(
                                                                resultItem,
                                                                r'''$..empresa''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars:
                                                                        30,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Color(
                                                                        0xFF4A4A4A),
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: InkWell(
                                                            onTap: () async {
                                                              await launchURL(
                                                                  getJsonField(
                                                                resultItem,
                                                                r'''$..site''',
                                                              ).toString());
                                                            },
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                                  child: Icon(
                                                                    Icons
                                                                        .location_pin,
                                                                    color: Color(
                                                                        0xFF2EBD9B),
                                                                    size: 24,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '${getJsonField(
                                                                    resultItem,
                                                                    r'''$..local''',
                                                                  ).toString()} (${getJsonField(
                                                                    resultItem,
                                                                    r'''$..regimeContratacao''',
                                                                  ).toString()})',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF4A4A4A),
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child: FaIcon(
                                                                FontAwesomeIcons
                                                                    .moneyBillAlt,
                                                                color: Color(
                                                                    0xFF2EBD9B),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                getJsonField(
                                                                  resultItem,
                                                                  r'''$..salario''',
                                                                ).toString(),
                                                                'A combinar',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Lexend Deca',
                                                                    color: Color(
                                                                        0xFF4A4A4A),
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1cpz1um6' /* Detalhar as informações da vag... */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF4A4A4A),
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
