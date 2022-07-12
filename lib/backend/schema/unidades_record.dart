import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'unidades_record.g.dart';

abstract class UnidadesRecord
    implements Built<UnidadesRecord, UnidadesRecordBuilder> {
  static Serializer<UnidadesRecord> get serializer =>
      _$unidadesRecordSerializer;

  @nullable
  double get areaCubierta;

  @nullable
  double get areaTotal;

  @nullable
  bool get balcon;

  @nullable
  int get banoSocial;

  @nullable
  int get banos;

  @nullable
  String get categoriaPrestamo;

  @nullable
  int get habitaciones;

  @nullable
  bool get jardin;

  @nullable
  int get numeracion;

  @nullable
  int get parqueaderos;

  @nullable
  int get piso;

  @nullable
  double get precio;

  @nullable
  double get precioAnterior;

  @nullable
  double get terraza;

  @nullable
  String get tipo;

  @nullable
  String get titulo;

  @nullable
  BuiltList<String> get recorrido3D;

  @nullable
  BuiltList<String> get galeria;

  @nullable
  DocumentReference get proyecto;

  @nullable
  BuiltList<String> get planos;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UnidadesRecordBuilder builder) => builder
    ..areaCubierta = 0.0
    ..areaTotal = 0.0
    ..balcon = false
    ..banoSocial = 0
    ..banos = 0
    ..categoriaPrestamo = ''
    ..habitaciones = 0
    ..jardin = false
    ..numeracion = 0
    ..parqueaderos = 0
    ..piso = 0
    ..precio = 0.0
    ..precioAnterior = 0.0
    ..terraza = 0.0
    ..tipo = ''
    ..titulo = ''
    ..recorrido3D = ListBuilder()
    ..galeria = ListBuilder()
    ..planos = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('unidades');

  static Stream<UnidadesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UnidadesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UnidadesRecord._();
  factory UnidadesRecord([void Function(UnidadesRecordBuilder) updates]) =
      _$UnidadesRecord;

  static UnidadesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUnidadesRecordData({
  double areaCubierta,
  double areaTotal,
  bool balcon,
  int banoSocial,
  int banos,
  String categoriaPrestamo,
  int habitaciones,
  bool jardin,
  int numeracion,
  int parqueaderos,
  int piso,
  double precio,
  double precioAnterior,
  double terraza,
  String tipo,
  String titulo,
  DocumentReference proyecto,
}) =>
    serializers.toFirestore(
        UnidadesRecord.serializer,
        UnidadesRecord((u) => u
          ..areaCubierta = areaCubierta
          ..areaTotal = areaTotal
          ..balcon = balcon
          ..banoSocial = banoSocial
          ..banos = banos
          ..categoriaPrestamo = categoriaPrestamo
          ..habitaciones = habitaciones
          ..jardin = jardin
          ..numeracion = numeracion
          ..parqueaderos = parqueaderos
          ..piso = piso
          ..precio = precio
          ..precioAnterior = precioAnterior
          ..terraza = terraza
          ..tipo = tipo
          ..titulo = titulo
          ..recorrido3D = null
          ..galeria = null
          ..proyecto = proyecto
          ..planos = null));
