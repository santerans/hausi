import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String getNumberBedrooms(List<UnidadesRecord> unidades) {
  return 'ref';
}

int fun(String value) {
  // convert string to integer
  int valueInt = int.parse(value);
  return valueInt;
}

List<String> getDiffHab(List<int> habitaciones) {
  // get unique values of a list
  List<int> hab = habitaciones.toSet().toList();
  hab.sort();
  List<String> habStrings = hab.map((e) => e.toString()).toList();
  return habStrings;
}

String refe(DocumentReference ref) {
  return "$ref";
}
