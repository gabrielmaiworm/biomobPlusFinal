import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FiltroLocalWidget extends StatefulWidget {
  const FiltroLocalWidget({
    Key? key,
    this.estabelecimentoPlace,
  }) : super(key: key);

  final dynamic estabelecimentoPlace;

  @override
  _FiltroLocalWidgetState createState() => _FiltroLocalWidgetState();
}

class _FiltroLocalWidgetState extends State<FiltroLocalWidget> {
  double? ratingBarValue;
  double? sliderValue;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
              child: Text(
                FFLocalizations.of(context).getText(
                  '9ov502z4' /* Filtro de Locais */,
                ),
                style: FlutterFlowTheme.of(context).title3.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF14181B),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 0, 8),
              child: Text(
                FFLocalizations.of(context).getText(
                  'xbvz8um6' /* Faça uma busca mais específica... */,
                ),
                style: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Outfit',
                      color: Color(0xFF57636C),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Meu_projeto_1_(1).png',
                    width: 150,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'lil83jgh' /* Avaliação dos Usuários */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF14181B),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  onRatingUpdate: (newValue) =>
                      setState(() => ratingBarValue = newValue),
                  itemBuilder: (context, index) => Icon(
                    Icons.star_rounded,
                    color: Color(0xFFFDBA23),
                  ),
                  direction: Axis.horizontal,
                  initialRating: ratingBarValue ??= FFAppState().avaliacaoNota,
                  unratedColor: Color(0xFF9E9E9E),
                  itemCount: 5,
                  itemSize: 35,
                  glowColor: Color(0xFFFDBA23),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'm3hdxkfw' /* Distância */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF14181B),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    'bfcvw1go' /* Até  */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF14181B),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  formatNumber(
                    sliderValue,
                    formatType: FormatType.decimal,
                    decimalType: DecimalType.commaDecimal,
                  ).maybeHandleOverflow(maxChars: 4),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF14181B),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Text(
                  FFLocalizations.of(context).getText(
                    'eym05ywe' /*  km */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF14181B),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Slider(
                    activeColor: FlutterFlowTheme.of(context).primaryColor,
                    inactiveColor: Color(0xFF9E9E9E),
                    min: 1,
                    max: 20,
                    value: sliderValue ??= 1,
                    onChanged: (newValue) {
                      setState(() => sliderValue = newValue);
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    setState(
                        () => FFAppState().avaliacaoNota = ratingBarValue!);
                    setState(
                        () => FFAppState().distancia = sliderValue!.toString());
                    Navigator.pop(context);

                    context.pushNamed('LocaisAcessiveis');
                  },
                  text: FFLocalizations.of(context).getText(
                    't3t31tpm' /* Salvar Filtros */,
                  ),
                  options: FFButtonOptions(
                    width: 150,
                    height: 40,
                    color: Color(0xFF32A089),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    setState(() => FFAppState().distancia = '5');
                    setState(() => FFAppState().avaliacaoNota = 5.0);
                    Navigator.pop(context);

                    context.pushNamed('LocaisAcessiveis');
                  },
                  text: FFLocalizations.of(context).getText(
                    '8njd0pxs' /* Limpar Filtros */,
                  ),
                  options: FFButtonOptions(
                    width: 150,
                    height: 40,
                    color: Color(0xFFD9D9D9),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lexend Deca',
                          color: Color(0xFF585858),
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
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
