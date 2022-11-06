import 'package:shared_preferences/shared_preferences.dart';

import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_expanded_image_view.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MeuPerfilWidget extends StatefulWidget {
  const MeuPerfilWidget({Key? key}) : super(key: key);

  @override
  _MeuPerfilWidgetState createState() => _MeuPerfilWidgetState();
}

class _MeuPerfilWidgetState extends State<MeuPerfilWidget>
    with TickerProviderStateMixin {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasContainerTriggered = false;
  final animationsMap = {
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 350.ms,
          begin: Offset(40, 0),
          end: Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  Future<void> limpa() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'MeuPerfil',
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
                'w3v1cvjr' /* Meu Perfil */,
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
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
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
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).fillBotaoMenu,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1,
                          color: Color(0xFFF1F4F8),
                          offset: Offset(0, 0),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.fade,
                                  child: FlutterFlowExpandedImageView(
                                    image: Image.asset(
                                      'assets/images/UI_avatar@2x.png',
                                      fit: BoxFit.contain,
                                    ),
                                    allowRotation: false,
                                    tag: 'circleImageTag',
                                    useHeroAnimation: true,
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'circleImageTag',
                              transitionOnUserGestures: true,
                              child: Container(
                                width: 76,
                                height: 76,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/UI_avatar@2x.png',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '61g8dobm' /* [User Name Here] */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .textoBotao,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'jp09aysb' /* email */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: FlutterFlowTheme.of(context)
                                              .textoBotao,
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
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
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      onTap: () async {
                        if (animationsMap[
                                'containerOnActionTriggerAnimation'] !=
                            null) {
                          setState(() => hasContainerTriggered = true);
                          SchedulerBinding.instance.addPostFrameCallback(
                              (_) async => await animationsMap[
                                      'containerOnActionTriggerAnimation']!
                                  .controller
                                  .forward(from: 0.0));
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).fillBotaoMenu,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 1,
                              color: Colors.white,
                              offset: Offset(0, 0),
                            )
                          ],
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '1wwmmxlz' /* Mudar para modo nortuno */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Container(
                                width: 80,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F4F8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  alignment: AlignmentDirectional(0, 0),
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.95, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 8, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            setDarkModeSetting(
                                                context, ThemeMode.light);
                                          },
                                          child: Icon(
                                            Icons.nights_stay,
                                            color: Color(0xFF95A1AC),
                                            size: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(-0.85, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          setDarkModeSetting(
                                              context, ThemeMode.dark);
                                        },
                                        child: Container(
                                          width: 36,
                                          height: 36,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4,
                                                color: Color(0x430B0D0F),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            shape: BoxShape.rectangle,
                                          ),
                                        ),
                                      ).animateOnActionTrigger(
                                          animationsMap[
                                              'containerOnActionTriggerAnimation']!,
                                          hasBeenTriggered:
                                              hasContainerTriggered),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(24, 12, 0, 12),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'jwisz543' /* Configurações da conta */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lexend Deca',
                                color: FlutterFlowTheme.of(context).textoBotao,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('ChangePassword');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).fillBotaoMenu,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3416202A),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    '2chvzqb4' /* Alterar senha */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: FlutterFlowTheme.of(context)
                                            .textoBotao,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF95A1AC),
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('EditProfile');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).fillBotaoMenu,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Color(0x3416202A),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12),
                          shape: BoxShape.rectangle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'uiiwg15b' /* Editar perfil */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .textoBotao,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: AlignmentDirectional(0.9, 0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color(0xFF95A1AC),
                                    size: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            limpa();
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Desconectado'),
                                  content: Text(
                                      'Você foi desconectado com sucesso.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );

                            context.goNamed('Entrada');
                          },
                          text: FFLocalizations.of(context).getText(
                            'ltd41toj' /* Sair */,
                          ),
                          options: FFButtonOptions(
                            width: 90,
                            height: 40,
                            color: FlutterFlowTheme.of(context).fillBotaoMenu,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyText2
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 1,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
