import 'package:shared_preferences/shared_preferences.dart';

import '../components/nav_bar1_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import '../components/tutorial_completo_widget.dart';

var nameUser;

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    initData();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

    Future<void> initData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? _nome = sharedPreferences.getString("name");

    setState(() {
      nameUser = _nome;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'HomePage',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).cor5,
          appBar: 
            // Generated code for this AppBar Widget...
AppBar(
  backgroundColor: FlutterFlowTheme.of(context).cor5,
  automaticallyImplyLeading: false,
  title: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
    child: Image.asset(
      'assets/images/Biomob-01_1.png',
      width: MediaQuery.of(context).size.width * 0.7,
      height: MediaQuery.of(context).size.height * 0.1,
      fit: BoxFit.contain,
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
                  child: TutorialCompletoWidget(),
                ),
              );
            },
          ).then((value) => setState(() {}));
        },
        child: Icon(
          Icons.info_outlined,
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                'a0mq23os' /* Bem-vindo(a) */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              valueOrDefault<String>(
                                nameUser,
                                'visitante!',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 20,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/IMG_3226_1.png',
                        ).image,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                if (Theme.of(context).brightness ==
                                    Brightness.light)
                                  Lottie.network(
                                    'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                    width: MediaQuery.of(context).size.width,
                                    height: 45,
                                    fit: BoxFit.cover,
                                    frameRate: FrameRate(60),
                                    animate: true,
                                  ),
                                if (Theme.of(context).brightness ==
                                    Brightness.dark)
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
                        // Generated code for this Column Widget...
Expanded(
  child: Padding(
    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.38,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).fillBotaoMenu,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'LocaisAcessiveis',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 100),
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/wheelchair_accessibility_icon_137024_1.png',
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.08,
                        fit: BoxFit.contain,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Locais',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Acessíveis',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.38,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).fillBotaoMenu,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('Estacionamento');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image.asset(
                            'assets/images/car_vehicle_transport_icon_144665_1.png',
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.08,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            'Vagas de',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Estacionamento',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
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
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.38,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).fillBotaoMenu,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('VagasEmprego');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Icon(
                          Icons.work,
                          color: FlutterFlowTheme.of(context).iconeBotao,
                          size: 60,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Vagas de',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Emprego',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.38,
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).fillBotaoMenu,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('Eventos');
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: FaIcon(
                          FontAwesomeIcons.solidCalendar,
                          color: FlutterFlowTheme.of(context).iconeBotao,
                          size: 55,
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Eventos',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                          Text(
                            'Acessíveis',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Lexend Deca',
                                  color:
                                      FlutterFlowTheme.of(context).textoBotao,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
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
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () async {
                  context.pushNamed('HomePage');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: MediaQuery.of(context).size.height * 0.15,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).fillBotaoMenu,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Icon(
                          Icons.volume_up_outlined,
                          color: FlutterFlowTheme.of(context).iconeBotao,
                          size: 50,
                        ),
                      ),
                      Text(
                        'Áudio Guia',
                        style: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).textoBotao,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
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
    ),
  ),
)
,
                        NavBar1Widget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
