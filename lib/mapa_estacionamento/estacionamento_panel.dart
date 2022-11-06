import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomEstacionamentoWidget extends StatefulWidget {
  const BottomEstacionamentoWidget({
    Key? key,
    this.estabelecimentoPlace,
  }) : super(key: key);

  final dynamic estabelecimentoPlace;

  @override
  _BottomEstacionamentoWidgetState createState() =>
      _BottomEstacionamentoWidgetState();
}

class _BottomEstacionamentoWidgetState
    extends State<BottomEstacionamentoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).cor4,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              getJsonField(
                widget.estabelecimentoPlace,
                r'''$..tipoVaga''',
              ).toString(),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).cor3,
                    fontSize: 22,
                  ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).iconeBotao,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: FlutterFlowTheme.of(context).cor4,
                            size: 35,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '68isku1t' /* Localização: */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        getJsonField(
                                          widget.estabelecimentoPlace,
                                          r'''$..endereco''',
                                        ).toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textoBotao,
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
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).iconeBotao,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.local_parking_rounded,
                            color: FlutterFlowTheme.of(context).cor4,
                            size: 35,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'jqea6n27' /* Nº de vagas: */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .iconeBotao,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: Text(
                                      getJsonField(
                                        widget.estabelecimentoPlace,
                                        r'''$..qntdVagas''',
                                      ).toString().maybeHandleOverflow(
                                            maxChars: 30,
                                            replacement: '…',
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .textoBotao,
                                            fontSize: 14,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 55,
                          height: 55,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).iconeBotao,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Icon(
                            Icons.description_outlined,
                            color: FlutterFlowTheme.of(context).cor4,
                            size: 35,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    'ye97mh9k' /* Descrição: */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        getJsonField(
                                          widget.estabelecimentoPlace,
                                          r'''$..detalhes''',
                                        ).toString(),
                                        maxLines: 4,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textoBotao,
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 5, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed(
                        'AvaliacaoEstacionamento',
                        queryParams: {
                          'estacionamentoInfo': serializeParam(
                            widget.estabelecimentoPlace,
                            ParamType.JSON,
                          ),
                        }.withoutNulls,
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
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
                          border: Border.all(
                            color: Color(0xFF2EBD9B),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star_sharp,
                                color: Colors.white,
                                size: 28,
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  'rb8nospl' /* Avaliar Vaga */,
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
          ],
        ),
      ),
    );
  }
}
