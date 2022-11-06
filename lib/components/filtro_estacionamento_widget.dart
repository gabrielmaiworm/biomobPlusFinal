import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class FiltroEstacionamentoWidget extends StatefulWidget {
  const FiltroEstacionamentoWidget({
    Key? key,
    this.estabelecimentoPlace,
  }) : super(key: key);

  final dynamic estabelecimentoPlace;

  @override
  _FiltroEstacionamentoWidgetState createState() =>
      _FiltroEstacionamentoWidgetState();
}

class _FiltroEstacionamentoWidgetState
    extends State<FiltroEstacionamentoWidget> {
  String? radioButtonValue;

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
                  'rflz563s' /* Filtro de Vagas */,
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
                  'z7hxxmaf' /* Faça uma busca mais específica... */,
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
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      'oicll87p' /* Tipo de vaga */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF14181B),
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterFlowRadioButton(
                    options: [
                      FFLocalizations.of(context).getText(
                        '0gkaqzcw' /* Vaga de Gestante */,
                      ),
                      FFLocalizations.of(context).getText(
                        'jnze2nfx' /* Vaga de Idoso */,
                      ),
                      FFLocalizations.of(context).getText(
                        'so31ny0u' /* Vaga de Deficiênte */,
                      ),
                      FFLocalizations.of(context).getText(
                        '1wgz8tg1' /* Estacionamento Privado */,
                      )
                    ].toList(),
                    onChanged: (val) => setState(() => radioButtonValue = val),
                    optionHeight: 25,
                    textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Lexend Deca',
                          color: Colors.black,
                          fontSize: 16,
                        ),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor: Color(0xFF32A089),
                    inactiveRadioButtonColor: Color(0x8A000000),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
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
                    setState(() =>
                        FFAppState().filtroEstacionamento = radioButtonValue!);
                    Navigator.pop(context);

                    context.pushNamed('Estacionamento');
                  },
                  text: FFLocalizations.of(context).getText(
                    'nwp9twfn' /* Salvar Filtros */,
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
                    setState(() =>
                        FFAppState().filtroEstacionamento = 'mostrarTodos');
                    Navigator.pop(context);

                    context.pushNamed('Estacionamento');
                  },
                  text: FFLocalizations.of(context).getText(
                    'o2ia8u6b' /* Limpar Filtros */,
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
