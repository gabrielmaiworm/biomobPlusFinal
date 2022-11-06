import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomEmpregoWidget extends StatefulWidget {
  const BottomEmpregoWidget({
    Key? key,
    this.estabelecimentoPlace,
  }) : super(key: key);

  final dynamic estabelecimentoPlace;

  @override
  _BottomEmpregoWidgetState createState() => _BottomEmpregoWidgetState();
}

class _BottomEmpregoWidgetState extends State<BottomEmpregoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Stack(
                            children: [
                              if (getJsonField(
                                    widget.estabelecimentoPlace,
                                    r'''$..logo''',
                                  ) ==
                                  null)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC3Eu038Gt_v-K8OPe_-NzoA4a52_fggGhHR-8LiKM3bAWhQYG67vJdE9spJBCjWHzSo0&usqp=CAU',
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              if (getJsonField(
                                    widget.estabelecimentoPlace,
                                    r'''$..logo''',
                                  ) !=
                                  null)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.network(
                                    getJsonField(
                                      widget.estabelecimentoPlace,
                                      r'''$..logo''',
                                    ),
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              getJsonField(
                                widget.estabelecimentoPlace,
                                r'''$..cargo''',
                              ).toString().maybeHandleOverflow(
                                    maxChars: 30,
                                    replacement: '…',
                                  ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF32A089),
                                    fontSize: 17,
                                  ),
                            ),
                            Text(
                              getJsonField(
                                widget.estabelecimentoPlace,
                                r'''$..emprego''',
                              ).toString().maybeHandleOverflow(
                                    maxChars: 30,
                                    replacement: '…',
                                  ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF4A4A4A),
                                    fontSize: 14,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: Icon(
                                  Icons.location_pin,
                                  color: Color(0xFF2EBD9B),
                                  size: 24,
                                ),
                              ),
                              Text(
                                '${getJsonField(
                                  widget.estabelecimentoPlace,
                                  r'''$..local''',
                                ).toString()} (${getJsonField(
                                  widget.estabelecimentoPlace,
                                  r'''$..regimeContratacao''',
                                ).toString()})',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF4A4A4A),
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.moneyBillAlt,
                                  color: Color(0xFF2EBD9B),
                                  size: 24,
                                ),
                              ),
                              Text(
                                getJsonField(
                                  widget.estabelecimentoPlace,
                                  r'''$..salario''',
                                ).toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF4A4A4A),
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (getJsonField(
                  widget.estabelecimentoPlace,
                  r'''$..link''',
                ) !=
                null)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: InkWell(
                  onTap: () async {
                    await launchURL(getJsonField(
                      widget.estabelecimentoPlace,
                      r'''$..link''',
                    ).toString());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                        child: Icon(
                          Icons.link_rounded,
                          color: Color(0xFF2EBD9B),
                          size: 24,
                        ),
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'ascqqotx' /* Acessar vaga */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF4A4A4A),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '9g68ygeo' /* Descrição da Vaga */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: FlutterFlowTheme.of(context).cor3,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    getJsonField(
                      widget.estabelecimentoPlace,
                      r'''$..descricao''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF616161),
                          fontWeight: FontWeight.w500,
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
