import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({
    Key? key,
    this.displayName,
    this.email,
  }) : super(key: key);

  final UsersRecord? displayName;
  final UsersRecord? email;

  @override
  _ChangePasswordWidgetState createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  TextEditingController? textController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<UsersRecord>>(
      stream: queryUsersRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitFadingCube(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 50,
              ),
            ),
          );
        }
        List<UsersRecord> changePasswordUsersRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final changePasswordUsersRecord =
            changePasswordUsersRecordList.isNotEmpty
                ? changePasswordUsersRecordList.first
                : null;
        return Title(
            title: 'ChangePassword',
            color: FlutterFlowTheme.of(context).primaryColor,
            child: Scaffold(
              key: scaffoldKey,
              backgroundColor: FlutterFlowTheme.of(context).cor5,
              appBar: AppBar(
                backgroundColor: FlutterFlowTheme.of(context).cor5,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  buttonSize: 48,
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                title: Text(
                  FFLocalizations.of(context).getText(
                    '1dndkq1k' /* Alterar senha */,
                  ),
                  style: FlutterFlowTheme.of(context).title2,
                ),
                actions: [],
                centerTitle: false,
                elevation: 0,
              ),
              body: SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).cor4,
                  ),
                  child: Form(
                    key: formKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              children: [
                                if (Theme.of(context).brightness ==
                                    Brightness.light)
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 10),
                                    child: Lottie.network(
                                      'https://lottie.host/c92c8431-5c77-49a7-81a9-ac7aa9291797/9DsVyaJTHl.json',
                                      width: MediaQuery.of(context).size.width,
                                      height: 45,
                                      fit: BoxFit.cover,
                                      animate: true,
                                    ),
                                  ),
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
                          ],
                        ),
                        Material(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.5,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).cor4,
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16, 12, 16, 10),
                                    child: Text(
                                      FFLocalizations.of(context).getText(
                                        '4e2ulocv' /* Insira seu e-mail e enviaremos... */,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .iconeBotao,
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        35, 20, 0, 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            'xlwoi75h' /* E-mail */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textoBotao,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 20),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.85,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                          child: TextFormField(
                                            controller: textController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'oqgh4lps' /* exemplo@gmail.com */,
                                              ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0x9AFFFFFF),
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .iconeBotao,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              filled: true,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .cor2,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 0),
                                              prefixIcon: Icon(
                                                Icons.email_outlined,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textoBotao,
                                                ),
                                            keyboardType:
                                                TextInputType.emailAddress,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 25, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 16),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              '8lqa1cdq' /* Enviar link */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 320,
                                              height: 40,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .cor2,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                              elevation: 3,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
      },
    );
  }
}
