import '../backend/api_requests/api_calls.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/upload_media.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class InfoAdicionalCopyWidget extends StatefulWidget {
  const InfoAdicionalCopyWidget({Key? key}) : super(key: key);

  @override
  _InfoAdicionalCopyWidgetState createState() =>
      _InfoAdicionalCopyWidgetState();
}

class _InfoAdicionalCopyWidgetState extends State<InfoAdicionalCopyWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  TextEditingController? textController1;
  TextEditingController? textController2;
  DateTime? datePicked;
  String? dropDefValue;
  String? dropGeneroValue;
  ApiCallResponse? apiResult9x7;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
        title: 'InfoAdicionalCopy',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).fillBotaoMenu,
          body: SafeArea(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
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
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  fit: BoxFit.contain,
                                ),
                              if (Theme.of(context).brightness ==
                                  Brightness.dark)
                                Image.asset(
                                  'assets/images/Biomob-01_1.png',
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  fit: BoxFit.contain,
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
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
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).cor1,
                      ),
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
                                EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: Container(
                              width: 120,
                              height: 120,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                valueOrDefault<String>(
                                  FFAppState().foto,
                                  'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.04,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).cor3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: InkWell(
                                    onTap: () async {
                                      final selectedMedia =
                                          await selectMediaWithSourceBottomSheet(
                                        context: context,
                                        allowPhoto: true,
                                      );
                                      if (selectedMedia != null &&
                                          selectedMedia.every((m) =>
                                              validateFileFormat(
                                                  m.storagePath, context))) {
                                        setState(() => isMediaUploading = true);
                                        var downloadUrls = <String>[];
                                        try {
                                          showUploadMessage(
                                            context,
                                            'Uploading file...',
                                            showLoading: true,
                                          );
                                          downloadUrls = (await Future.wait(
                                            selectedMedia.map(
                                              (m) async => await uploadData(
                                                  m.storagePath, m.bytes),
                                            ),
                                          ))
                                              .where((u) => u != null)
                                              .map((u) => u!)
                                              .toList();
                                        } finally {
                                          ScaffoldMessenger.of(context)
                                              .hideCurrentSnackBar();
                                          isMediaUploading = false;
                                        }
                                        if (downloadUrls.length ==
                                            selectedMedia.length) {
                                          setState(() => uploadedFileUrl =
                                              downloadUrls.first);
                                          showUploadMessage(
                                              context, 'Success!');
                                        } else {
                                          setState(() {});
                                          showUploadMessage(context,
                                              'Failed to upload media');
                                          return;
                                        }
                                      }

                                      setState(() =>
                                          FFAppState().foto = uploadedFileUrl);
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'w91pzmfy' /* Enviar foto */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Colors.white,
                                                fontSize: 16,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
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
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'y5vtrs50' /* CPF */,
                                      ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'c2u703bc' /* Insira seu CPF aqui... */,
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
                                              0, 10, 0, 0),
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    keyboardType: TextInputType.number,
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return FFLocalizations.of(context)
                                            .getText(
                                          'ibr45ba8' /* Campo obrigatório. */,
                                        );
                                      }

                                      if (val.length < 11) {
                                        return FFLocalizations.of(context)
                                            .getText(
                                          'jkykqs2c' /* CPF inválido. */,
                                        );
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.85,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
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
                                        '365tgraj' /* Telefone */,
                                      ),
                                      hintText:
                                          FFLocalizations.of(context).getText(
                                        'jcygn8x5' /* Insira seu telefone aqui... */,
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
                                              0, 10, 0, 0),
                                      prefixIcon: Icon(
                                        Icons.local_phone,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    keyboardType: TextInputType.phone,
                                    validator: (val) {
                                      if (val == null || val.isEmpty) {
                                        return FFLocalizations.of(context)
                                            .getText(
                                          'gzx4dt0n' /* Campo obrigatório. */,
                                        );
                                      }

                                      if (val.length < 9) {
                                        return FFLocalizations.of(context)
                                            .getText(
                                          'a3epwayw' /* Telefone inválido. */,
                                        );
                                      }

                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () async {
                                    if (kIsWeb) {
                                      final _datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2050),
                                      );

                                      if (_datePickedDate != null) {
                                        setState(
                                          () => datePicked = DateTime(
                                            _datePickedDate.year,
                                            _datePickedDate.month,
                                            _datePickedDate.day,
                                          ),
                                        );
                                      }
                                    } else {
                                      await DatePicker.showDatePicker(
                                        context,
                                        showTitleActions: true,
                                        onConfirm: (date) {
                                          setState(() => datePicked = date);
                                        },
                                        currentTime: getCurrentTimestamp,
                                        minTime: DateTime(0, 0, 0),
                                        locale: LocaleType.values.firstWhere(
                                          (l) =>
                                              l.name ==
                                              FFLocalizations.of(context)
                                                  .languageCode,
                                          orElse: () => LocaleType.en,
                                        ),
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.85,
                                    height: MediaQuery.of(context).size.height *
                                        0.05,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context).cor2,
                                      borderRadius: BorderRadius.circular(50),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .iconeBotao,
                                        width: 1,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10, 0, 10, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: Icon(
                                              Icons.cake,
                                              color: Color(0xFF42BEA5),
                                              size: 24,
                                            ),
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              dateTimeFormat(
                                                'd/M/y',
                                                datePicked,
                                                locale:
                                                    FFLocalizations.of(context)
                                                        .languageCode,
                                              ),
                                              'Data de Nascimento',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500,
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
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '2m2wwjx8' /* Você possui algum tipo de defi... */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 10, 25, 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterFlowDropDown(
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      'h3m015uh' /* Física */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'qp1w3dxm' /* Mental ou Intelectual */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'pnktexjh' /* Sensorial */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'oezummrx' /* Doença Rara */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'zwdgprw9' /* Não possui */,
                                    )
                                  ],
                                  onChanged: (val) =>
                                      setState(() => dropDefValue = val),
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0x9AFFFFFF),
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    '7ib6nddz' /* Selecionar deficiência... */,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color:
                                        FlutterFlowTheme.of(context).iconeBotao,
                                    size: 15,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context).cor2,
                                  elevation: 2,
                                  borderColor:
                                      FlutterFlowTheme.of(context).iconeBotao,
                                  borderWidth: 1,
                                  borderRadius: 50,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      'ppgt4x90' /* Qual seu gênero? */,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 10, 25, 15),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterFlowDropDown(
                                  options: [
                                    FFLocalizations.of(context).getText(
                                      '9t26ien7' /* Homem */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'kgph69hu' /* Mulher */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      'i0p5k3m1' /* Não Binário */,
                                    ),
                                    FFLocalizations.of(context).getText(
                                      '00qb4oaj' /* Prefiro não informar */,
                                    )
                                  ],
                                  onChanged: (val) =>
                                      setState(() => dropGeneroValue = val),
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: Color(0x9AFFFFFF),
                                      ),
                                  hintText: FFLocalizations.of(context).getText(
                                    'ayu6m6wz' /* Selecionar gênero... */,
                                  ),
                                  icon: Icon(
                                    Icons.arrow_drop_down_sharp,
                                    color:
                                        FlutterFlowTheme.of(context).iconeBotao,
                                    size: 15,
                                  ),
                                  fillColor: FlutterFlowTheme.of(context).cor2,
                                  elevation: 2,
                                  borderColor:
                                      FlutterFlowTheme.of(context).iconeBotao,
                                  borderWidth: 1,
                                  borderRadius: 50,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 4),
                                  hidesUnderline: true,
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

                                  if (dropDefValue == null) {
                                    return;
                                  }

                                  if (uploadedFileUrl == null ||
                                      uploadedFileUrl.isEmpty) {
                                    return;
                                  }

                                  apiResult9x7 =
                                      await CadastroDeUsuarioCall.call(
                                    email: FFAppState().email,
                                    name: FFAppState().nome,
                                    cpf: textController1!.text,
                                    telefone: textController2!.text,
                                    deficiencia: dropDefValue,
                                    foto: uploadedFileUrl,
                                    password: FFAppState().senha,
                                    aniversario: dateTimeFormat(
                                      'd/M/y',
                                      datePicked,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ),
                                    genero: dropGeneroValue,
                                  );
                                  if ((apiResult9x7?.succeeded ?? true)) {
                                    context.pushNamed('Login');
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Erro ao criar usuário.',
                                          style: TextStyle(
                                            color: Color(0xFFE9E9E9),
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF656565),
                                      ),
                                    );
                                  }

                                  setState(() {});
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
                                          '73wzqyq0' /* Criar conta */,
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
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  FFLocalizations.of(context).getText(
                                    '4xf56v8o' /* Já possui uma conta?  */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .textoBotao,
                                      ),
                                ),
                                InkWell(
                                  onTap: () async {
                                    context.pushNamed('Login');
                                  },
                                  child: Text(
                                    FFLocalizations.of(context).getText(
                                      '4e47id04' /* Entrar */,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
