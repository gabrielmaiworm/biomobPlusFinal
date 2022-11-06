import 'package:shared_preferences/shared_preferences.dart';

import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class EntradaWidget extends StatefulWidget {
  const EntradaWidget({Key? key}) : super(key: key);

  @override
  _EntradaWidgetState createState() => _EntradaWidgetState();
}

class _EntradaWidgetState extends State<EntradaWidget> {
  LatLng? currentUserLocationValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Entrada',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).cor4,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Theme.of(context).brightness == Brightness.dark)
                  Lottie.network(
                    'https://lottie.host/14aad2bd-0e5d-4461-9612-4b999650f492/n3p9uQGJrI.json',
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        if (Theme.of(context).brightness == Brightness.dark)
                          Image.asset(
                            'assets/images/Biomob-01_1.png',
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.1,
                            fit: BoxFit.contain,
                          ),
                        if (Theme.of(context).brightness == Brightness.light)
                          Image.asset(
                            'assets/images/Biomob-01.png',
                            width: MediaQuery.of(context).size.width * 0.7,
                            height: MediaQuery.of(context).size.height * 0.1,
                            fit: BoxFit.contain,
                          ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/c12c4d99f2272e4cf64859a646d03b64.png',
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'nbeujnoz' /* Onde você quer */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).cinzaBranco,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'vun8kdgy' /* chegar  */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: FlutterFlowTheme.of(context)
                                        .cinzaBranco,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            Text(
                              FFLocalizations.of(context).getText(
                                'gun54ky6' /* hoje? */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF32A089),
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('Login');
                              },
                              text: FFLocalizations.of(context).getText(
                                'u6snrs8z' /* Entrar */,
                              ),
                              options: FFButtonOptions(
                                width: 150,
                                height: 40,
                                color: FlutterFlowTheme.of(context).cinzaBranco,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .fillBotaoMenu,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: FFButtonWidget(
                              onPressed: () async {
                                context.pushNamed('RegisterCopy');
                              },
                              text: FFLocalizations.of(context).getText(
                                'ko0lllxp' /* Cadastre-se */,
                              ),
                              options: FFButtonOptions(
                                width: 150,
                                height: 40,
                                color: FlutterFlowTheme.of(context).cor5,
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () async { 
                              currentUserLocationValue =
                                  await getCurrentUserLocation(
                                      defaultLocation: LatLng(0.0, 0.0));

                              context.pushNamedAuth('HomePage', mounted);

                              setState(() => FFAppState().posicao =
                                  currentUserLocationValue!.toString());
                             
                            },
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'sbhrlex1' /* Entrar como visitante */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color:
                                        FlutterFlowTheme.of(context).textoBotao,
                                    fontWeight: FontWeight.w600,
                                    decoration: TextDecoration.underline,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        if (Theme.of(context).brightness == Brightness.light)
                          Lottie.network(
                            'https://lottie.host/1eb78806-5ef5-40ff-8b49-688e11c46a1e/curGeVeKE5.json',
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
