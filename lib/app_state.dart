import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _banos = prefs.getInt('ff_banos') ?? _banos;
    _habitaciones = prefs.getInt('ff_habitaciones') ?? _habitaciones;
    _banosSociales = prefs.getInt('ff_banosSociales') ?? _banosSociales;
    _parqueaderos = prefs.getInt('ff_parqueaderos') ?? _parqueaderos;
  }

  SharedPreferences prefs;

  int _banos = 0;
  int get banos => _banos;
  set banos(int _value) {
    _banos = _value;
    prefs.setInt('ff_banos', _value);
  }

  int _habitaciones = 0;
  int get habitaciones => _habitaciones;
  set habitaciones(int _value) {
    _habitaciones = _value;
    prefs.setInt('ff_habitaciones', _value);
  }

  int _banosSociales = 0;
  int get banosSociales => _banosSociales;
  set banosSociales(int _value) {
    _banosSociales = _value;
    prefs.setInt('ff_banosSociales', _value);
  }

  int _parqueaderos = 0;
  int get parqueaderos => _parqueaderos;
  set parqueaderos(int _value) {
    _parqueaderos = _value;
    prefs.setInt('ff_parqueaderos', _value);
  }

  bool autorizacionCredito = true;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
