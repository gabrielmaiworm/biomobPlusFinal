import '../backend/api_requests/api_calls.dart';
import '../components/filtro_local_widget.dart';
import '../components/lista_vazia_widget.dart';
import '../components/tutorial_locais_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:badges/badges.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:dio/dio.dart';

class LocaisAcessiveisWidget extends StatefulWidget {
  const LocaisAcessiveisWidget({Key? key}) : super(key: key);

  @override
  _LocaisAcessiveisWidgetState createState() => _LocaisAcessiveisWidgetState();
}

class _LocaisAcessiveisWidgetState extends State<LocaisAcessiveisWidget> {
  LatLng? currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController? searchFieldController;

  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    searchFieldController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    searchFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (currentUserLocationValue == null) {
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
    return Title(
        title: 'LocaisAcessiveis',
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
                context.pushNamed('HomePage');
              },
            ),
            title: Text(
              'Locais acessíveis',
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
                            child: TutorialLocaisWidget(),
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
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: FutureBuilder<ApiCallResponse>(
                  future: BuscarLocaisPertoUserCall.call(
                    categoria: FFAppState().categoria,
                    range: FFAppState().distancia,
                    posicao: currentUserLocationValue?.toString(),
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
                    final columnBuscarLocaisPertoUserResponse = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.min,
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
                                  if (Theme.of(context).brightness ==
                                      Brightness.dark)
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
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 5, 5, 0),
                                      child: Container(
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Color(0xFF2EBD9B),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 4, 0, 4),
                                          child: Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                4, 0, 4, 0),
                                                    child: TextFormField(
                                                      controller:
                                                          searchFieldController,
                                                      onChanged: (_) =>
                                                          EasyDebounce.debounce(
                                                        'searchFieldController',
                                                        Duration(
                                                            milliseconds: 50),
                                                        () => setState(() {}),
                                                      ),
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        isDense: true,
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'qyid9nq6' /* Procure um lugar */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend Deca',
                                                                  color: Color(
                                                                      0xFF57636C),
                                                                  fontSize: 14,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        errorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        focusedErrorBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 2,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(8),
                                                        ),
                                                        prefixIcon: Icon(
                                                          Icons.search_sharp,
                                                          color:
                                                              Color(0xFF57636C),
                                                          size: 16,
                                                        ),
                                                        suffixIcon:
                                                            searchFieldController!
                                                                    .text
                                                                    .isNotEmpty
                                                                ? InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      searchFieldController
                                                                          ?.clear();
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .clear,
                                                                      color: Color(
                                                                          0xFF757575),
                                                                      size: 22,
                                                                    ),
                                                                  )
                                                                : null,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF262D34),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5, 5, 10, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (context) {
                                              return Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.7,
                                                  child: FiltroLocalWidget(),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));
                                        },
                                        child: Container(
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
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            border: Border.all(
                                              color: Color(0xFF2EBD9B),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.tune_rounded,
                                                color: Color(0xFF2EBD9B),
                                                size: 30,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10, 10, 10, 10),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType !=
                                            'hospedagem')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() => FFAppState()
                                                    .categoria = 'lodging');
                                                setState(() => FFAppState()
                                                    .choiceType = 'hospedagem');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons.bed,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'do2jjwda' /* Hospedagem */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType ==
                                            'hospedagem')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons.bed,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'daya0wph' /* Hospedagem */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType !=
                                            'restaurant')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() => FFAppState()
                                                    .categoria = 'restaurant');
                                                setState(() => FFAppState()
                                                    .choiceType = 'restaurant');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.4,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Icon(
                                                          Icons.restaurant,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mbj28o1l' /* Comer e Beber */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType ==
                                            'restaurant')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.4,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      Icon(
                                                        Icons.restaurant,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jprukiar' /* Comer e Beber */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType != 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() =>
                                                    FFAppState().categoria =
                                                        'health, pharmacy');
                                                setState(() => FFAppState()
                                                    .choiceType = 'saude');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.48,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .briefcaseMedical,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'm9qe0vdl' /* Saúde e Bem-estar */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType == 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.48,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons
                                                            .briefcaseMedical,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8mvr0xuc' /* Saúde e Bem-estar */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType != 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() =>
                                                    FFAppState().categoria =
                                                        'health, pharmacy');
                                                setState(() => FFAppState()
                                                    .choiceType = 'saude');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.48,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .wrench,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7r3egxp4' /* Serviços */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType == 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.48,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons.wrench,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ty7977ae' /* Serviços */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType != 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() =>
                                                    FFAppState().categoria =
                                                        'health, pharmacy');
                                                setState(() => FFAppState()
                                                    .choiceType = 'saude');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.48,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons
                                                              .tshirt,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2jboo48d' /* Varejo */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType == 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.48,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons.tshirt,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ehzs2yvh' /* Varejo */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType != 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() =>
                                                    FFAppState().categoria =
                                                        'health, pharmacy');
                                                setState(() => FFAppState()
                                                    .choiceType = 'saude');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.48,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Icon(
                                                          Icons.festival,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'g7ymtkjo' /* Eventos */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType == 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.48,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Icon(
                                                        Icons.festival,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'raow4olv' /* Eventos */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                    Stack(
                                      children: [
                                        if (FFAppState().choiceType != 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: InkWell(
                                              onTap: () async {
                                                setState(() =>
                                                    FFAppState().categoria =
                                                        'health, pharmacy');
                                                setState(() => FFAppState()
                                                    .choiceType = 'saude');

                                                context.pushNamed(
                                                    'LocaisAcessiveis');
                                              },
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.48,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.05,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE6E6E6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 5, 5, 5),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        FaIcon(
                                                          FontAwesomeIcons.bus,
                                                          color:
                                                              Color(0xFF8F8E8E),
                                                          size: 24,
                                                        ),
                                                        Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'k7rsls9i' /* Transporte Público */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Lexend Deca',
                                                                color: Color(
                                                                    0xFF8F8E8E),
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (FFAppState().choiceType == 'saude')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 0, 10, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.48,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.05,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .cor5,
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      FaIcon(
                                                        FontAwesomeIcons.bus,
                                                        color: Colors.white,
                                                        size: 24,
                                                      ),
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0uez8451' /* Transporte Público */,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend Deca',
                                                              color:
                                                                  Colors.white,
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
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'tm3h80ce' /* Perto de mim */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .iconeBotao,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '91r9ow58' /* Não Avaliados */,
                                      ),
                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context).cinzaBranco,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        var dio = Dio();
                                        final response = await dio.get('https://api-tux-biomob.herokuapp.com/biomob-api/places/${FFAppState().categoria}/${functions
                                                .stringGETusersLocation(
                                                    currentUserLocationValue)}/${FFAppState().distancia}');
                                        
                                          print((response.data)['page']['nextPageToken']);  

                                          var token = ((response.data)['page']['nextPageToken']);

                                          final url = 'https://api-tux-biomob.herokuapp.com/biomob-api/places/${FFAppState().categoria}/${functions
                                                .stringGETusersLocation(
                                                    currentUserLocationValue)}/${FFAppState().distancia}&pageToken=${token}';                
                                      },
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'gy0dtsl2' /* next */,
                                        ),
                                        style: FlutterFlowTheme.of(context).bodyText1.override(
                                              fontFamily: 'Poppins',
                                              color: FlutterFlowTheme.of(context).cinzaBranco,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FutureBuilder<ApiCallResponse>(
                                          future:
                                              BuscarLocaisPertoUserCall.call(
                                            categoria: FFAppState().categoria,
                                            range: FFAppState().distancia,
                                            posicao: functions
                                                .stringGETusersLocation(
                                                    currentUserLocationValue),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: SpinKitFadingCube(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 50,
                                                  ),
                                                ),
                                              );
                                            }
                                            final listViewBuscarLocaisPertoUserResponse =
                                                snapshot.data!;
                                            return Builder(
                                              builder: (context) {
                                                final listaHotel = getJsonField(
                                                  listViewBuscarLocaisPertoUserResponse
                                                      .jsonBody,
                                                  r'''$.places[*]''',
                                                ).toList();
                                                if (listaHotel.isEmpty) {
                                                  return ListaVaziaWidget();
                                                }
                                                return ListView.builder(
                                                  
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: listaHotel.length,
                                                  itemBuilder: (context,
                                                      listaHotelIndex) {
                                                    final listaHotelItem =
                                                        listaHotel[
                                                            listaHotelIndex];
                                                    return Visibility(
                                                      visible: functions.showSearchResult(
                                                        searchFieldController?.text,
                                                        getJsonField(
                                                          listaHotelItem,
                                                          r'''$..name''',
                                                        ).toString()) && getJsonField(
                                                            listaHotelItem,
                                                            r'''$..biomobStarAverage''',
                                                          ) ==
                                                          null, 
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    10, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'Estabelecimento',
                                                              queryParams: {
                                                                'detalhes':
                                                                    serializeParam(
                                                                  listaHotelItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 2,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              height: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .height *
                                                                  0.05,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .fillBotaoMenu,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Stack(
                                                                      children: [
                                                                        if (getJsonField(
                                                                              listaHotelItem,
                                                                              r'''$..photo_reference''',
                                                                            ) !=
                                                                            null)
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..photo_reference''',
                                                                              ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                                                              width: MediaQuery.of(context).size.width * 0.6,
                                                                              height: MediaQuery.of(context).size.height * 0.15,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        if (getJsonField(
                                                                              listaHotelItem,
                                                                              r'''$..photo_reference''',
                                                                            ) ==
                                                                            null)
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768',
                                                                              width: MediaQuery.of(context).size.width * 0.6,
                                                                              height: MediaQuery.of(context).size.height * 0.15,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..name''',
                                                                              ).toString().maybeHandleOverflow(
                                                                                    maxChars: 20,
                                                                                    replacement: '…',
                                                                                  ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).iconeBotao,
                                                                                    fontSize: 16,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .location_on_outlined,
                                                                          color:
                                                                              Color(0xFF2EBD9B),
                                                                          size:
                                                                              24,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..formatted_address''',
                                                                              ).toString().maybeHandleOverflow(
                                                                                    maxChars: 30,
                                                                                    replacement: '…',
                                                                                  ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    color: FlutterFlowTheme.of(context).cinzaBranco,
                                                                                    fontSize: 13,
                                                                                  ),
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
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 5, 0, 5),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFLocalizations.of(context).getText(
                                        '67xyj6tz' /* Avaliados */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .cinzaBranco,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: FutureBuilder<ApiCallResponse>(
                                          future:
                                              BuscarLocaisPertoUserCall.call(
                                            categoria: FFAppState().categoria,
                                            range: FFAppState().distancia,
                                            posicao: functions
                                                .stringGETusersLocation(
                                                    currentUserLocationValue),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50,
                                                  height: 50,
                                                  child: SpinKitFadingCube(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 50,
                                                  ),
                                                ),
                                              );
                                            }
                                            final listViewBuscarLocaisPertoUserResponse =
                                                snapshot.data!;
                                            return Builder(
                                              builder: (context) {
                                                final listaHotel = getJsonField(
                                                  listViewBuscarLocaisPertoUserResponse
                                                      .jsonBody,
                                                  r'''$.places[*]''',
                                                ).toList();
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: listaHotel.length,
                                                  itemBuilder: (context,
                                                      listaHotelIndex) {
                                                    final listaHotelItem =
                                                        listaHotel[
                                                            listaHotelIndex];
                                                    return Visibility(
                                                      visible: functions.showSearchResult(
                                                        searchFieldController?.text,
                                                        getJsonField(
                                                          listaHotelItem,
                                                          r'''$..name''',
                                                        ).toString()) && getJsonField(
                                                            listaHotelItem,
                                                            r'''$..biomobStarAverage''',
                                                          ) !=
                                                          null, 
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(10, 0,
                                                                    10, 0),
                                                        child: InkWell(
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'Estabelecimento',
                                                              queryParams: {
                                                                'detalhes':
                                                                    serializeParam(
                                                                  listaHotelItem,
                                                                  ParamType
                                                                      .JSON,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            elevation: 2,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8),
                                                            ),
                                                            child: Container(
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.6,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .fillBotaoMenu,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5,
                                                                            5,
                                                                            5,
                                                                            5),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Stack(
                                                                      children: [
                                                                        if (getJsonField(
                                                                              listaHotelItem,
                                                                              r'''$..photo_reference''',
                                                                            ) !=
                                                                            null)
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photo_reference=${getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..photo_reference''',
                                                                              ).toString()}&key=AIzaSyB5bgwqEelomy8qhYXb95UAXOiRE6BZ3ZU',
                                                                              width: MediaQuery.of(context).size.width * 0.6,
                                                                              height: MediaQuery.of(context).size.height * 0.15,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        if (getJsonField(
                                                                              listaHotelItem,
                                                                              r'''$..photo_reference''',
                                                                            ) ==
                                                                            null)
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8),
                                                                            child:
                                                                                Image.network(
                                                                              'https://pix10.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768',
                                                                              width: MediaQuery.of(context).size.width * 0.6,
                                                                              height: MediaQuery.of(context).size.height * 0.15,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              0,
                                                                              5,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Expanded(
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..name''',
                                                                              ).toString().maybeHandleOverflow(
                                                                                    maxChars: 20,
                                                                                    replacement: '…',
                                                                                  ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).iconeBotao,
                                                                                    fontSize: 16,
                                                                                    fontWeight: FontWeight.w600,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .location_on_outlined,
                                                                          color:
                                                                              Color(0xFF2EBD9B),
                                                                          size:
                                                                              24,
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                2,
                                                                                0,
                                                                                0,
                                                                                0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..formatted_address''',
                                                                              ).toString().maybeHandleOverflow(
                                                                                    maxChars: 30,
                                                                                    replacement: '…',
                                                                                  ),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    color: FlutterFlowTheme.of(context).cinzaBranco,
                                                                                    fontSize: 13,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Text(
                                                                              getJsonField(
                                                                                listaHotelItem,
                                                                                r'''$..biomobStarAverage''',
                                                                              ).toString(),
                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                    fontFamily: 'Lexend Deca',
                                                                                    color: FlutterFlowTheme.of(context).cinzaBranco,
                                                                                  ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
                                                                              child: Icon(
                                                                                Icons.star_sharp,
                                                                                color: Color(0xFFFDBA23),
                                                                                size: 20,
                                                                              ),
                                                                            ),
                                                                          ],
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
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ));
  }
}
