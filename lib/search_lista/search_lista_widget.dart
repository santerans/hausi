import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../proyecto_screen/proyecto_screen_widget.dart';
import '../search_mapa/search_mapa_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SearchListaWidget extends StatefulWidget {
  const SearchListaWidget({Key key}) : super(key: key);

  @override
  _SearchListaWidgetState createState() => _SearchListaWidgetState();
}

class _SearchListaWidgetState extends State<SearchListaWidget> {
  PageController pageViewController;
  TextEditingController textController1;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  String dropDownValue1;
  TextEditingController textController2;
  TextEditingController textController3;
  bool switchListTileValue;
  TextEditingController textController4;
  String dropDownValue2;
  String dropDownValue3;
  String dropDownValue4;
  double sliderValue1;
  double sliderValue2;

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ProyectosRecord>>(
      stream: queryProyectosRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ProyectosRecord> searchListaProyectosRecordList = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          drawer: Container(
            width: double.infinity,
            child: Drawer(
              elevation: 16,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.arrow_back_ios_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20,
                                ),
                                onPressed: () async {
                                  if (scaffoldKey.currentState.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                              Text(
                                'Atrás',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Text(
                            'Encontraras propiedades que se ajusten a tu bolsillo',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Tipo de vivienda',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              FlutterFlowDropDown(
                                initialOption: dropDownValue1 ??=
                                    'Vivienda nueva',
                                options: ['Vivienda nueva'],
                                onChanged: (val) =>
                                    setState(() => dropDownValue1 = val),
                                width: 180,
                                height: 42,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xFF232738),
                                  size: 15,
                                ),
                                fillColor: Colors.white,
                                elevation: 0,
                                borderColor: Color(0xFFC4C4C4),
                                borderWidth: 0,
                                borderRadius: 4,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    20, 5, 20, 5),
                                hidesUnderline: true,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Cuota mensual que puedes pagar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              TextFormField(
                                controller: textController2,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textController2',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: '\$1,000',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 20, 10),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Entrada que puedes pagar',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              TextFormField(
                                controller: textController3,
                                onChanged: (_) => EasyDebounce.debounce(
                                  'textController3',
                                  Duration(milliseconds: 2000),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: '\$1,000',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFC4C4C4),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 20, 10),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                    ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: Container(
                                  width: 48,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                                  child: SwitchListTile(
                                    value: switchListTileValue ??= true,
                                    onChanged: (newValue) => setState(
                                        () => switchListTileValue = newValue),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 5, 0),
                                    child: Text(
                                      'Pagar entrada en cuotas',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.solidQuestionCircle,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      size: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                                child: Text(
                                  'Número de meses en que deseas\n pagar la entrada',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                      ),
                                ),
                              ),
                              Expanded(
                                child: TextFormField(
                                  controller: textController4,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    'textController4',
                                    Duration(milliseconds: 2000),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: '24',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFC4C4C4),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFFC4C4C4),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                      ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Banco',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              FlutterFlowDropDown(
                                initialOption: dropDownValue2 ??=
                                    'Banco del Pacífico (Nueva - 6.99%)',
                                options: ['Banco del Pacífico (Nueva - 6.99%)'],
                                onChanged: (val) =>
                                    setState(() => dropDownValue2 = val),
                                width: 180,
                                height: 42,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black,
                                    ),
                                hintText: 'Please select...',
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color(0xFF232738),
                                  size: 15,
                                ),
                                fillColor: Colors.white,
                                elevation: 0,
                                borderColor: Color(0xFFC4C4C4),
                                borderWidth: 0,
                                borderRadius: 4,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    20, 5, 20, 5),
                                hidesUnderline: true,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                                child: Text(
                                  'Plazo (años)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 0, 10),
                                      child: Text(
                                        '10',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 0, 10),
                                      child: Text(
                                        '15',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 0, 10),
                                      child: Text(
                                        '20',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F2F2),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Color(0xFFC4C4C4),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 0, 10),
                                      child: Text(
                                        '25',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 60,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F2F2),
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                        color: Color(0xFFC4C4C4),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20, 10, 0, 10),
                                      child: Text(
                                        '30\n',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFFC4C4C4),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                              child: Text(
                                'Puedes pagar una propiedad de máximo',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                              child: Text(
                                '\$ 145,413',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 224,
                                    height: 9,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFF5001),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(200),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(200),
                                        topRight: Radius.circular(0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 46,
                                    height: 9,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFD600),
                                    ),
                                  ),
                                  Container(
                                    width: 64,
                                    height: 9,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF00B2FF),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(200),
                                        topLeft: Radius.circular(0),
                                        topRight: Radius.circular(200),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 15),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: Text(
                                          'Pago inicial (6%)  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Text(
                                          '............................',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 5, 0),
                                            child: Text(
                                              '\$10,000',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons
                                                  .solidQuestionCircle,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 15),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: Text(
                                          'Entrada (4%)  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Text(
                                          '.....................................',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Text(
                                        '\$795 / mes',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 15),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.solidCircle,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          size: 5,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 5, 0),
                                        child: Text(
                                          'Préstamo (80%)  ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: Text(
                                          '................................',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 5, 0),
                                            child: Text(
                                              '\$116,331',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 10, 0),
                                            child: FaIcon(
                                              FontAwesomeIcons
                                                  .solidQuestionCircle,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          endDrawer: Container(
            width: double.infinity,
            child: Drawer(
              elevation: 16,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 50, 15, 0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: Color(0x33333326),
                                borderRadius: 6,
                                borderWidth: 1,
                                buttonSize: 40,
                                icon: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 20,
                                ),
                                onPressed: () async {
                                  if (scaffoldKey.currentState.isDrawerOpen ||
                                      scaffoldKey
                                          .currentState.isEndDrawerOpen) {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                child: Text(
                                  'Filtros ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              Text(
                                '(5 seleccionados)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Ubicaciones',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 144,
                                    height: 37,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        width: 0.92,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'La Carolina',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10, 0, 0, 0),
                                          child: Icon(
                                            Icons.close_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            size: 25,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Estado',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Slider(
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveColor: Color(0xFFD9D9D9),
                                min: 0,
                                max: 2,
                                value: sliderValue1 ??= 0,
                                label: sliderValue1.toString(),
                                divisions: 2,
                                onChanged: (newValue) {
                                  setState(() => sliderValue1 = newValue);
                                },
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Preventa',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    'Construcción',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  Text(
                                    'Entrega inmediata',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Tipo de propiedad',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 10, 20, 3),
                                          child: Icon(
                                            Icons.house,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          'Casas',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 105,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFD9D9D9),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 10, 20, 0),
                                          child: Icon(
                                            Icons.apartment,
                                            color: Color(0xFF747268),
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          'Departamentos',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF747268),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                        color: Color(0xFFD9D9D9),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 10, 20, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.tree,
                                            color: Color(0xFF747268),
                                            size: 35,
                                          ),
                                        ),
                                        Text(
                                          'Lotes',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color: Color(0xFF747268),
                                                fontSize: 11,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Precio',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Slider(
                                activeColor:
                                    FlutterFlowTheme.of(context).primaryColor,
                                inactiveColor: Color(0xFFD9D9D9),
                                min: 0,
                                max: 10,
                                value: sliderValue2 ??= 0,
                                onChanged: (newValue) {
                                  setState(() => sliderValue2 = newValue);
                                },
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Caracteristicas',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Habitaciones',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF747268),
                                            fontSize: 18,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.horizontal_rule,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .habitaciones =
                                                FFAppState().habitaciones + -1);
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .habitaciones
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF747268),
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.add,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .habitaciones =
                                                FFAppState().habitaciones + 1);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Baños',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF747268),
                                            fontSize: 18,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.horizontal_rule,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() => FFAppState().banos =
                                                FFAppState().banos + -1);
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState().banos.toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF747268),
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.add,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(
                                                () => FFAppState().banos = 1);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Baños sociales',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF747268),
                                            fontSize: 18,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.horizontal_rule,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() =>
                                                FFAppState().banosSociales =
                                                    FFAppState().banosSociales +
                                                        -1);
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .banosSociales
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF747268),
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.add,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .banosSociales =
                                                FFAppState().banosSociales + 1);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Parqueaderos',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF747268),
                                            fontSize: 18,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.horizontal_rule,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .parqueaderos =
                                                FFAppState().parqueaderos + -1);
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16, 0, 16, 0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              FFAppState()
                                                  .parqueaderos
                                                  .toString(),
                                              '0',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: Color(0xFF747268),
                                                  fontSize: 20,
                                                ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Color(0xFF747268),
                                          borderRadius: 100,
                                          borderWidth: 1,
                                          buttonSize: 36,
                                          icon: Icon(
                                            Icons.add,
                                            color: Color(0xFF747268),
                                            size: 20,
                                          ),
                                          onPressed: () async {
                                            setState(() => FFAppState()
                                                    .parqueaderos =
                                                FFAppState().parqueaderos + 1);
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Fecha de entrega',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FlutterFlowDropDown(
                                    options: ['Option 1'],
                                    onChanged: (val) =>
                                        setState(() => dropDownValue3 = val),
                                    width: 103,
                                    height: 40,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF6B6D81),
                                          fontWeight: FontWeight.w600,
                                        ),
                                    hintText: 'Min',
                                    fillColor: Colors.white,
                                    elevation: 2,
                                    borderColor: Color(0xFFD9D9D9),
                                    borderWidth: 0,
                                    borderRadius: 6,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12, 4, 12, 4),
                                    hidesUnderline: true,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20, 0, 20, 0),
                                    child: Text(
                                      'a',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: Color(0xFF232738),
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  FlutterFlowDropDown(
                                    options: ['2020', '2021'],
                                    onChanged: (val) =>
                                        setState(() => dropDownValue4 = val),
                                    width: 103,
                                    height: 40,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: Color(0xFF6B6D81),
                                          fontWeight: FontWeight.w600,
                                        ),
                                    hintText: 'Max',
                                    fillColor: Colors.white,
                                    elevation: 0,
                                    borderColor: Color(0xFFD9D9D9),
                                    borderWidth: 0,
                                    borderRadius: 6,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12, 4, 12, 4),
                                    hidesUnderline: true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                                child: Text(
                                  'Amenidades',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Container(
                                      width: 100,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 0, 0),
                                        child: Text(
                                          'Jardín',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBtnText,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      borderRadius: BorderRadius.circular(6),
                                      border: Border.all(
                                        color: Color(0xFFD9D9D9),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Text(
                                        'Terraza',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color: Color(0xFF6B6D81),
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xFFE3E3E5),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).gray200,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 12, 0),
                                      child: Icon(
                                        Icons.search_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 24,
                                      ),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        controller: textController1,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'textController1',
                                          Duration(milliseconds: 2000),
                                          () => setState(() {}),
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Buscar',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              lineHeight: 1,
                                            ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        scaffoldKey.currentState
                                            .openEndDrawer();
                                      },
                                      child: SvgPicture.asset(
                                        'assets/images/Group_95.svg',
                                        width: 23,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 8,
                        borderWidth: 0,
                        buttonSize: 50,
                        fillColor: FlutterFlowTheme.of(context).primaryColor,
                        icon: FaIcon(
                          FontAwesomeIcons.calculator,
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          size: 20,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProyectoScreenWidget(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 20, 15, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SearchMapaWidget(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(20),
                            shape: BoxShape.rectangle,
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 5, 0),
                                  child: Icon(
                                    Icons.format_list_bulleted_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    size: 24,
                                  ),
                                ),
                                Text(
                                  'Mapa',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 16,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                        child: AutoSizeText(
                          '|',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Montserrat',
                                color: FlutterFlowTheme.of(context).grayIcon,
                                fontSize: 25,
                                fontWeight: FontWeight.w200,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Text(
                                      'La Carolina',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.clear_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Builder(
                    builder: (context) {
                      final list =
                          searchListaProyectosRecordList?.toList() ?? [];
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: list.length,
                        itemBuilder: (context, listIndex) {
                          final listItem = list[listIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 300,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 20,
                                      color: Color(0x19000000),
                                      offset: Offset(0, 5),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                alignment: AlignmentDirectional(0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Expanded(
                                      child: Builder(
                                        builder: (context) {
                                          final sliderGallery = listItem.galeria
                                                  .toList()
                                                  ?.toList() ??
                                              [];
                                          return Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                1,
                                            child: Stack(
                                              children: [
                                                PageView.builder(
                                                  controller:
                                                      pageViewController ??=
                                                          PageController(
                                                              initialPage: min(
                                                                  1,
                                                                  sliderGallery
                                                                          .length -
                                                                      1)),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount:
                                                      sliderGallery.length,
                                                  itemBuilder: (context,
                                                      sliderGalleryIndex) {
                                                    final sliderGalleryItem =
                                                        sliderGallery[
                                                            sliderGalleryIndex];
                                                    return InkWell(
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                ProyectoScreenWidget(
                                                              proyectoRef:
                                                                  listItem
                                                                      .reference,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  20),
                                                          topRight:
                                                              Radius.circular(
                                                                  20),
                                                        ),
                                                        child: Image.network(
                                                          sliderGalleryItem,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              1,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0, 1),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0, 0, 0, 10),
                                                    child: SmoothPageIndicator(
                                                      controller: pageViewController ??=
                                                          PageController(
                                                              initialPage: min(
                                                                  1,
                                                                  sliderGallery
                                                                          .length -
                                                                      1)),
                                                      count:
                                                          sliderGallery.length,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      onDotClicked: (i) {
                                                        pageViewController
                                                            .animateToPage(
                                                          i,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      effect: SlideEffect(
                                                        spacing: 5,
                                                        radius: 5,
                                                        dotWidth: 5,
                                                        dotHeight: 5,
                                                        dotColor:
                                                            Color(0x78FFFFFF),
                                                        activeDotColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        paintStyle:
                                                            PaintingStyle.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15, 15, 15, 15),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 15, 0),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.5,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Text(
                                                        listItem.nombre,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .grayIcon,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Text(
                                                        'De \$ 230 a \$ 250 mil',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .title3
                                                                .override(
                                                                  fontFamily:
                                                                      'Montserrat',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 5),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Vector.svg',
                                                                  width: 20,
                                                                  height: 12,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Text(
                                                                '3',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Vector_(1).svg',
                                                                  width: 20,
                                                                  height: 12,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Text(
                                                                '2 a 3',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            5,
                                                                            0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Frame_287.svg',
                                                                  width: 20,
                                                                  height: 12,
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                              Text(
                                                                '200 a 240',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Text(
                                                      listItem.direccion,
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .grayIcon,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  maxWidth: 100,
                                                ),
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 0, 10),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(4),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(9,
                                                                      7, 9, 7),
                                                          child: AutoSizeText(
                                                            listItem.etapa,
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBtnText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 12,
                                                              height: 1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) {
                                                        final tags = listItem
                                                                .etiquetas
                                                                .toList()
                                                                ?.toList() ??
                                                            [];
                                                        return Wrap(
                                                          spacing: 10,
                                                          runSpacing: 10,
                                                          alignment:
                                                              WrapAlignment.end,
                                                          crossAxisAlignment:
                                                              WrapCrossAlignment
                                                                  .start,
                                                          direction:
                                                              Axis.horizontal,
                                                          runAlignment:
                                                              WrapAlignment
                                                                  .start,
                                                          verticalDirection:
                                                              VerticalDirection
                                                                  .down,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          children:
                                                              List.generate(
                                                                  tags.length,
                                                                  (tagsIndex) {
                                                            final tagsItem =
                                                                tags[tagsIndex];
                                                            return Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0x4CFF5001),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            9,
                                                                            7,
                                                                            9,
                                                                            7),
                                                                child:
                                                                    AutoSizeText(
                                                                  tagsItem,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      TextStyle(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        12,
                                                                    height: 1,
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                ),
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
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
