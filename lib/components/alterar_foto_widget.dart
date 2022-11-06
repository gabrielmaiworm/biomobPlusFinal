import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class AlterarFotoWidget extends StatefulWidget {
  const AlterarFotoWidget({Key? key}) : super(key: key);

  @override
  _AlterarFotoWidgetState createState() => _AlterarFotoWidgetState();
}

class _AlterarFotoWidgetState extends State<AlterarFotoWidget> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Material(
                    color: Colors.transparent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Container(
                        width: 50,
                        height: 50,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          valueOrDefault<String>(
                            FFAppState().foto,
                            'https://nameproscdn.com/data-auth/b/attachments/106/106343-82907bfea9fe97e84861e2ee7c5b4f5b.data?j=eyJkIjoiaW5saW5lOyBmaWxlbmFtZT1cImVtcHR5LnBuZ1wiIiwiZSI6MTY1OTY4NjA5NiwibSI6ImltYWdlXC9wbmciLCJ0IjoxNjU0NTAyMDk2LCJ2IjoxfQ&k=ktqUbaVh9xLDFliGw6UD6occB_c',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '72vxxsa1' /* Upload da foto */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).darkBG,
                            fontSize: 15,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: FFLocalizations.of(context).getText(
                        '0mnt9d3v' /* Salvar */,
                      ),
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
