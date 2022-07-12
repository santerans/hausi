import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'proyectos_record.g.dart';

abstract class ProyectosRecord
    implements Built<ProyectosRecord, ProyectosRecordBuilder> {
  static Serializer<ProyectosRecord> get serializer =>
      _$proyectosRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  String get entrada;

  @nullable
  String get constructora;

  @nullable
  double get reserva;

  @nullable
  String get fechaEntrega;

  @nullable
  BuiltList<String> get galeria;

  @nullable
  String get etapa;

  @nullable
  BuiltList<String> get acabados;

  @nullable
  String get agenteInmobiliario;

  @nullable
  BuiltList<String> get amenidades;

  @nullable
  String get ciudad;

  @nullable
  String get direccion;

  @nullable
  String get etiquetaPromocion;

  @nullable
  BuiltList<String> get etiquetas;

  @nullable
  String get pais;

  @nullable
  BuiltList<String> get recorrido3D;

  @nullable
  String get sector;

  @nullable
  BuiltList<String> get video;

  @nullable
  LatLng get location;

  @nullable
  BuiltList<DocumentReference> get unidades;

  @nullable
  DocumentReference get referencia;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProyectosRecordBuilder builder) => builder
    ..nombre = ''
    ..entrada = ''
    ..constructora = ''
    ..reserva = 0.0
    ..fechaEntrega = ''
    ..galeria = ListBuilder()
    ..etapa = ''
    ..acabados = ListBuilder()
    ..agenteInmobiliario = ''
    ..amenidades = ListBuilder()
    ..ciudad = ''
    ..direccion = ''
    ..etiquetaPromocion = ''
    ..etiquetas = ListBuilder()
    ..pais = ''
    ..recorrido3D = ListBuilder()
    ..sector = ''
    ..video = ListBuilder()
    ..unidades = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proyectos');

  static Stream<ProyectosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProyectosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProyectosRecord._();
  factory ProyectosRecord([void Function(ProyectosRecordBuilder) updates]) =
      _$ProyectosRecord;

  static ProyectosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProyectosRecordData({
  String nombre,
  String entrada,
  String constructora,
  double reserva,
  String fechaEntrega,
  String etapa,
  String agenteInmobiliario,
  String ciudad,
  String direccion,
  String etiquetaPromocion,
  String pais,
  String sector,
  LatLng location,
  DocumentReference referencia,
}) =>
    serializers.toFirestore(
        ProyectosRecord.serializer,
        ProyectosRecord((p) => p
          ..nombre = nombre
          ..entrada = entrada
          ..constructora = constructora
          ..reserva = reserva
          ..fechaEntrega = fechaEntrega
          ..galeria = null
          ..etapa = etapa
          ..acabados = null
          ..agenteInmobiliario = agenteInmobiliario
          ..amenidades = null
          ..ciudad = ciudad
          ..direccion = direccion
          ..etiquetaPromocion = etiquetaPromocion
          ..etiquetas = null
          ..pais = pais
          ..recorrido3D = null
          ..sector = sector
          ..video = null
          ..location = location
          ..unidades = null
          ..referencia = referencia));
