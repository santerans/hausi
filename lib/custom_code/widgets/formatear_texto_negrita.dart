// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom widget code
class FormatearTextoNegrita extends StatelessWidget {
  const FormatearTextoNegrita({
    Key key,
    this.width,
    this.height,
    this.textoNegrita,
    this.textoInicio,
    this.textoFinal,
    this.fontSize,
  }) : super(key: key);

  final double width;
  final double height;
  final String textoNegrita;
  final String textoInicio;
  final String textoFinal;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: textoInicio,
        style: TextStyle(fontSize: fontSize, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
              text: textoNegrita,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: textoFinal),
        ],
      ),
    );
  }
}
