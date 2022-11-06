import 'package:shared_preferences/shared_preferences.dart';

import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

var nameUser;

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  ApiCallResponse? apiResultrwe;
  TextEditingController? textController1;
  TextEditingController? textController2;

  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Login',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).cor4,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                      child: Image.asset(
                        'assets/images/09f5256a7769380e026f5e46ed10120b.png',
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.32,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        children: [
                          Lottie.network(
                            'https://lottie.host/5e74bf3c-efba-4fb0-a20e-ade1b367efec/u0NJMuqWiC.json',
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            fit: BoxFit.cover,
                            animate: true,
                          ),
                          if (Theme.of(context).brightness == Brightness.light)
                            Lottie.network(
                              'https://lottie.host/0f0c799e-e7b9-420b-8f6a-d7c985756198/Q55bs9pmxC.json',
                              width: MediaQuery.of(context).size.width,
                              height: 45,
                              fit: BoxFit.cover,
                              animate: true,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).cor1,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: TextFormField(
                                  controller: textController1,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'ko4ddkar' /* E-mail */,
                                    ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'rdngxvox' /* exemplo@gmail.com */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0x9AFFFFFF),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).cor2,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: TextFormField(
                                  controller: textController2,
                                  obscureText: !passwordVisibility,
                                  decoration: InputDecoration( 
                                    isDense: true,
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'cpi5y94p' /* Senha */,
                                    ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'iersnl72' /* Insira sua senha... */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: Color(0x9AFFFFFF),
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).cor2,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 0),
                                    prefixIcon: Icon(
                                      Icons.vpn_key,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordVisibility =
                                            !passwordVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Colors.white,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('ChangePassword');
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'yoqsc5u5' /* Esqueci minha senha */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.85,
                                height:
                                    MediaQuery.of(context).size.height * 0.05,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .fillBotaoMenu,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: InkWell(
                                  
                                  onTap: () async {
                                    
                                   SharedPreferences data =
                                      await SharedPreferences.getInstance();

                                    var response = await POSTLoginCall.call(
                                      email: textController1!.text,
                                      password: textController2!.text,
                                    );

                                    if (response.statusCode == 200 || response.statusCode == 201) {
                                      
                                    await data.setString('name',
                                        "${(response.jsonBody)['name']}");
                                    await data.setString('email',
                                        "${(response.jsonBody)['email']}");
                                    await data.setString(
                                        'cpf', "${(response.jsonBody)['cpf']}");
                                    await data.setString('telefone',
                                        "${(response.jsonBody)['telefone']}");
                                    await data.setString('deficiencia',
                                        "${(response.jsonBody)['deficiencia']}");
                                    await data.setString('foto',
                                        "${(response.jsonBody)['foto']}");

                                        context.pushNamed('HomePage');
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            'E-mail ou senha incorretos!',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Colors.white,
                                            ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor: Color(0xFFC93A3A),
                                        ),
                                      );
                                     
                                    }

                           
                                  },
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'c6ky1hkc' /* Entrar */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .iconeBotao,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      indent: 30,
                                      endIndent: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                FFLocalizations.of(context).getText(
                                  '59dkj9a8' /* Ou entre com */,
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Divider(
                                      indent: 30,
                                      endIndent: 30,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/338ffe762252685e35ead8c72e480a2a.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20, 0, 20, 0),
                                child: Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF9F9F9),
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/a6869cf3a3b1444f6eac8036eb5dd54b.png',
                                        width: 30,
                                        height: 30,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/images/2c8cfbd0b1bfb1d4949e3e3588598b00.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                FFLocalizations.of(context).getText(
                                  '454cht5m' /* Não possui cadastro?  */,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color: FlutterFlowTheme.of(context)
                                          .textoBotao,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              InkWell(
                                onTap: () async {
                                  context.pushNamed('RegisterCopy');
                                },
                                child: Text(
                                  FFLocalizations.of(context).getText(
                                    'bl9iwu1f' /* Cadastre-se */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .fillBotaoMenu,
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
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
