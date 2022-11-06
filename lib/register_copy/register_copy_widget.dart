import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class RegisterCopyWidget extends StatefulWidget {
  const RegisterCopyWidget({Key? key}) : super(key: key);

  @override
  _RegisterCopyWidgetState createState() => _RegisterCopyWidgetState();
}

class _RegisterCopyWidgetState extends State<RegisterCopyWidget> {
  TextEditingController? nameController;
  TextEditingController? textController2;
  TextEditingController? textController3;

  late bool passwordVisibility1;
  TextEditingController? textController4;

  late bool passwordVisibility2;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    passwordVisibility1 = false;
    textController4 = TextEditingController();
    passwordVisibility2 = false;
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    nameController?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'RegisterCopy',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).fillBotaoMenu,
          body: SafeArea(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).fillBotaoMenu,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                if (Theme.of(context).brightness ==
                                    Brightness.light)
                                  Image.asset(
                                    'assets/images/Biomob-01.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    fit: BoxFit.contain,
                                  ),
                                if (Theme.of(context).brightness ==
                                    Brightness.dark)
                                  Image.asset(
                                    'assets/images/Biomob-01_1.png',
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    height: MediaQuery.of(context).size.height *
                                        0.1,
                                    fit: BoxFit.contain,
                                  ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (Theme.of(context).brightness ==
                                  Brightness.light)
                                Lottie.network(
                                  'https://lottie.host/0f0c799e-e7b9-420b-8f6a-d7c985756198/Q55bs9pmxC.json',
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
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 1,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).cor1,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      1, 1, 1, 1),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: TextFormField(
                                      controller: nameController,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'uzhysm64' /* Nome completo */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'rewwjq32' /* Insira seu nome... */,
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
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .iconeBotao,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                        prefixIcon: Icon(
                                          Icons.person,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      keyboardType: TextInputType.name,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return FFLocalizations.of(context)
                                              .getText(
                                            'cy50xuh1' /* O nome não pode ser vazio. */,
                                          );
                                        }

                                        if (val.length < 2) {
                                          return FFLocalizations.of(context)
                                              .getText(
                                            'bbmsdfdv' /* Insira um nome válido. */,
                                          );
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      1, 1, 1, 1),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: TextFormField(
                                      controller: textController2,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'c5luf4j7' /* E-mail */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'hhg38aet' /* Insira seu email... */,
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
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .iconeBotao,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                        prefixIcon: Icon(
                                          Icons.email_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      keyboardType: TextInputType.emailAddress,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return FFLocalizations.of(context)
                                              .getText(
                                            'xk2dxfkf' /* Campo obrigatório. */,
                                          );
                                        }

                                        if (!RegExp(kTextValidatorEmailRegex)
                                            .hasMatch(val)) {
                                          return FFLocalizations.of(context)
                                              .getText(
                                            'ct3dkbgz' /* Email inválido. */,
                                          );
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      1, 1, 1, 1),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: TextFormField(
                                      controller: textController3,
                                      obscureText: !passwordVisibility1,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'sb9jl20h' /* Senha */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'oj134tfi' /* Insira sua senha... */,
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
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .iconeBotao,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                        prefixIcon: Icon(
                                          Icons.vpn_key,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => passwordVisibility1 =
                                                !passwordVisibility1,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            passwordVisibility1
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      validator: (val) {
                                        if (val == null || val.isEmpty) {
                                          return FFLocalizations.of(context)
                                              .getText(
                                            'm2nat2ul' /* Campo obrigatório. */,
                                          );
                                        }

                                        if (val.length < 6) {
                                          return FFLocalizations.of(context)
                                              .getText(
                                            'vezhpq0t' /* A senha deve ter no mínimo 6 c... */,
                                          );
                                        }

                                        return null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      1, 1, 1, 1),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: TextFormField(
                                      controller: textController4,
                                      obscureText: !passwordVisibility2,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          '5ujrsidf' /* Confirmar senha */,
                                        ),
                                        hintText:
                                            FFLocalizations.of(context).getText(
                                          'grzr5hot' /* Confirmar sua senha... */,
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
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .iconeBotao,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(50),
                                        ),
                                        filled: true,
                                        fillColor:
                                            FlutterFlowTheme.of(context).cor2,
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0, 10, 0, 0),
                                        prefixIcon: Icon(
                                          Icons.vpn_key,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                        suffixIcon: InkWell(
                                          onTap: () => setState(
                                            () => passwordVisibility2 =
                                                !passwordVisibility2,
                                          ),
                                          focusNode:
                                              FocusNode(skipTraversal: true),
                                          child: Icon(
                                            passwordVisibility2
                                                ? Icons.visibility_outlined
                                                : Icons.visibility_off_outlined,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Colors.white,
                                          ),
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () async {
                                  if (formKey.currentState == null ||
                                      !formKey.currentState!.validate()) {
                                    return;
                                  }

                                  setState(() =>
                                      FFAppState().nome = nameController!.text);
                                  setState(() => FFAppState().email =
                                      textController2!.text);
                                  setState(() => FFAppState().senha =
                                      textController3!.text);

                                  context.pushNamed('InfoAdicionalCopy');
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          'adt7p7cm' /* Avançar */,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '3hgxnkyc' /* Já possui uma conta?  */,
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
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed('Login');
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'gmesqelt' /* Entrar */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .fillBotaoMenu,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pop();
                                  },
                                  text: '',
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color:
                                        FlutterFlowTheme.of(context).iconeBotao,
                                    size: 30,
                                  ),
                                  options: FFButtonOptions(
                                    width: 55,
                                    height: 40,
                                    color: FlutterFlowTheme.of(context)
                                        .fillBotaoMenu,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
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
          ),
        ));
  }
}
