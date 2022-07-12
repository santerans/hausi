import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../search_lista/search_lista_widget.dart';
import '../singin/singin_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NosConocemosWidget extends StatefulWidget {
  const NosConocemosWidget({Key key}) : super(key: key);

  @override
  _NosConocemosWidgetState createState() => _NosConocemosWidgetState();
}

class _NosConocemosWidgetState extends State<NosConocemosWidget> {
  TextEditingController emailAddressController;
  TextEditingController passwordController;
  bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailAddressController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Spacer(flex: 2),
                Text(
                  '¿Nos conocemos?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),
                Spacer(flex: 2),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(),
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: InkWell(
                          onTap: () async {
                            final user = await signInWithGoogle(context);
                            if (user == null) {
                              return;
                            }
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchListaWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).grayIcon,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 10, 20, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Image.network(
                                      'https://rotulosmatesanz.com/wp-content/uploads/2017/09/2000px-Google_G_Logo.svg_.png',
                                      width: 26,
                                      height: 26,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Text(
                                    'Continuar con Google',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: InkWell(
                          onTap: () async {
                            final user = await signInWithFacebook(context);
                            if (user == null) {
                              return;
                            }
                            await Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchListaWidget(),
                              ),
                              (r) => false,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).grayIcon,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 10, 20, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.facebook,
                                      color: Color(0xFF015FFF),
                                      size: 26,
                                    ),
                                  ),
                                  Text(
                                    'Continuar con Facebook',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchListaWidget(),
                            ),
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).grayIcon,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.userSecret,
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                    size: 26,
                                  ),
                                ),
                                Text(
                                  'Continuar como invitado',
                                  style: FlutterFlowTheme.of(context).subtitle1,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).grayIcon,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                        child: Text(
                          'o continuar con',
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).grayIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: emailAddressController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 14,
                                    ),
                                hintText: 'Correo',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 14,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 20, 20, 20),
                                prefixIcon: Icon(
                                  Icons.email,
                                  size: 20,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyText1,
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: passwordController,
                            autofocus: true,
                            obscureText: !passwordVisibility,
                            decoration: InputDecoration(
                              labelStyle:
                                  FlutterFlowTheme.of(context).bodyText2,
                              hintText: 'Contraseña',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 0,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              filled: true,
                              fillColor:
                                  FlutterFlowTheme.of(context).tertiaryColor,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 20),
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 20,
                              ),
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () =>
                                      passwordVisibility = !passwordVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  passwordVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context).grayIcon,
                                  size: 20,
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  'Olvidé mi contraseña',
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Spacer(),
                FFButtonWidget(
                  onPressed: () async {
                    final user = await signInWithEmail(
                      context,
                      emailAddressController.text,
                      passwordController.text,
                    );
                    if (user == null) {
                      return;
                    }

                    await Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SearchListaWidget(),
                      ),
                      (r) => false,
                    );
                  },
                  text: 'Ingresar',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 50,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Montserrat',
                          color: Colors.white,
                        ),
                    elevation: 5,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                      child: Text(
                        '¿No tienes una cuenta?',
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                      child: InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SinginWidget(),
                            ),
                          );
                        },
                        child: Text(
                          'Regístrate',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
