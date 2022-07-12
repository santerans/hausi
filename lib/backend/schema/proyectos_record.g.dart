// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proyectos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProyectosRecord> _$proyectosRecordSerializer =
    new _$ProyectosRecordSerializer();

class _$ProyectosRecordSerializer
    implements StructuredSerializer<ProyectosRecord> {
  @override
  final Iterable<Type> types = const [ProyectosRecord, _$ProyectosRecord];
  @override
  final String wireName = 'ProyectosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProyectosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.entrada;
    if (value != null) {
      result
        ..add('entrada')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.constructora;
    if (value != null) {
      result
        ..add('constructora')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reserva;
    if (value != null) {
      result
        ..add('reserva')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.fechaEntrega;
    if (value != null) {
      result
        ..add('fechaEntrega')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.galeria;
    if (value != null) {
      result
        ..add('galeria')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.etapa;
    if (value != null) {
      result
        ..add('etapa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.acabados;
    if (value != null) {
      result
        ..add('acabados')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.agenteInmobiliario;
    if (value != null) {
      result
        ..add('agenteInmobiliario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amenidades;
    if (value != null) {
      result
        ..add('amenidades')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ciudad;
    if (value != null) {
      result
        ..add('ciudad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.etiquetaPromocion;
    if (value != null) {
      result
        ..add('etiquetaPromocion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.etiquetas;
    if (value != null) {
      result
        ..add('etiquetas')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.pais;
    if (value != null) {
      result
        ..add('pais')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recorrido3D;
    if (value != null) {
      result
        ..add('recorrido3D')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.sector;
    if (value != null) {
      result
        ..add('sector')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.unidades;
    if (value != null) {
      result
        ..add('unidades')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.referencia;
    if (value != null) {
      result
        ..add('referencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ProyectosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProyectosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'entrada':
          result.entrada = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'constructora':
          result.constructora = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reserva':
          result.reserva = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'fechaEntrega':
          result.fechaEntrega = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'galeria':
          result.galeria.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'etapa':
          result.etapa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'acabados':
          result.acabados.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'agenteInmobiliario':
          result.agenteInmobiliario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amenidades':
          result.amenidades.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'ciudad':
          result.ciudad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'etiquetaPromocion':
          result.etiquetaPromocion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'etiquetas':
          result.etiquetas.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'pais':
          result.pais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recorrido3D':
          result.recorrido3D.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'sector':
          result.sector = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'unidades':
          result.unidades.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'referencia':
          result.referencia = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ProyectosRecord extends ProyectosRecord {
  @override
  final String nombre;
  @override
  final String entrada;
  @override
  final String constructora;
  @override
  final double reserva;
  @override
  final String fechaEntrega;
  @override
  final BuiltList<String> galeria;
  @override
  final String etapa;
  @override
  final BuiltList<String> acabados;
  @override
  final String agenteInmobiliario;
  @override
  final BuiltList<String> amenidades;
  @override
  final String ciudad;
  @override
  final String direccion;
  @override
  final String etiquetaPromocion;
  @override
  final BuiltList<String> etiquetas;
  @override
  final String pais;
  @override
  final BuiltList<String> recorrido3D;
  @override
  final String sector;
  @override
  final BuiltList<String> video;
  @override
  final LatLng location;
  @override
  final BuiltList<DocumentReference<Object>> unidades;
  @override
  final DocumentReference<Object> referencia;
  @override
  final DocumentReference<Object> reference;

  factory _$ProyectosRecord([void Function(ProyectosRecordBuilder) updates]) =>
      (new ProyectosRecordBuilder()..update(updates)).build();

  _$ProyectosRecord._(
      {this.nombre,
      this.entrada,
      this.constructora,
      this.reserva,
      this.fechaEntrega,
      this.galeria,
      this.etapa,
      this.acabados,
      this.agenteInmobiliario,
      this.amenidades,
      this.ciudad,
      this.direccion,
      this.etiquetaPromocion,
      this.etiquetas,
      this.pais,
      this.recorrido3D,
      this.sector,
      this.video,
      this.location,
      this.unidades,
      this.referencia,
      this.reference})
      : super._();

  @override
  ProyectosRecord rebuild(void Function(ProyectosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProyectosRecordBuilder toBuilder() =>
      new ProyectosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProyectosRecord &&
        nombre == other.nombre &&
        entrada == other.entrada &&
        constructora == other.constructora &&
        reserva == other.reserva &&
        fechaEntrega == other.fechaEntrega &&
        galeria == other.galeria &&
        etapa == other.etapa &&
        acabados == other.acabados &&
        agenteInmobiliario == other.agenteInmobiliario &&
        amenidades == other.amenidades &&
        ciudad == other.ciudad &&
        direccion == other.direccion &&
        etiquetaPromocion == other.etiquetaPromocion &&
        etiquetas == other.etiquetas &&
        pais == other.pais &&
        recorrido3D == other.recorrido3D &&
        sector == other.sector &&
        video == other.video &&
        location == other.location &&
        unidades == other.unidades &&
        referencia == other.referencia &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, nombre.hashCode), entrada.hashCode), constructora.hashCode),
                                                                                reserva.hashCode),
                                                                            fechaEntrega.hashCode),
                                                                        galeria.hashCode),
                                                                    etapa.hashCode),
                                                                acabados.hashCode),
                                                            agenteInmobiliario.hashCode),
                                                        amenidades.hashCode),
                                                    ciudad.hashCode),
                                                direccion.hashCode),
                                            etiquetaPromocion.hashCode),
                                        etiquetas.hashCode),
                                    pais.hashCode),
                                recorrido3D.hashCode),
                            sector.hashCode),
                        video.hashCode),
                    location.hashCode),
                unidades.hashCode),
            referencia.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProyectosRecord')
          ..add('nombre', nombre)
          ..add('entrada', entrada)
          ..add('constructora', constructora)
          ..add('reserva', reserva)
          ..add('fechaEntrega', fechaEntrega)
          ..add('galeria', galeria)
          ..add('etapa', etapa)
          ..add('acabados', acabados)
          ..add('agenteInmobiliario', agenteInmobiliario)
          ..add('amenidades', amenidades)
          ..add('ciudad', ciudad)
          ..add('direccion', direccion)
          ..add('etiquetaPromocion', etiquetaPromocion)
          ..add('etiquetas', etiquetas)
          ..add('pais', pais)
          ..add('recorrido3D', recorrido3D)
          ..add('sector', sector)
          ..add('video', video)
          ..add('location', location)
          ..add('unidades', unidades)
          ..add('referencia', referencia)
          ..add('reference', reference))
        .toString();
  }
}

class ProyectosRecordBuilder
    implements Builder<ProyectosRecord, ProyectosRecordBuilder> {
  _$ProyectosRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _entrada;
  String get entrada => _$this._entrada;
  set entrada(String entrada) => _$this._entrada = entrada;

  String _constructora;
  String get constructora => _$this._constructora;
  set constructora(String constructora) => _$this._constructora = constructora;

  double _reserva;
  double get reserva => _$this._reserva;
  set reserva(double reserva) => _$this._reserva = reserva;

  String _fechaEntrega;
  String get fechaEntrega => _$this._fechaEntrega;
  set fechaEntrega(String fechaEntrega) => _$this._fechaEntrega = fechaEntrega;

  ListBuilder<String> _galeria;
  ListBuilder<String> get galeria =>
      _$this._galeria ??= new ListBuilder<String>();
  set galeria(ListBuilder<String> galeria) => _$this._galeria = galeria;

  String _etapa;
  String get etapa => _$this._etapa;
  set etapa(String etapa) => _$this._etapa = etapa;

  ListBuilder<String> _acabados;
  ListBuilder<String> get acabados =>
      _$this._acabados ??= new ListBuilder<String>();
  set acabados(ListBuilder<String> acabados) => _$this._acabados = acabados;

  String _agenteInmobiliario;
  String get agenteInmobiliario => _$this._agenteInmobiliario;
  set agenteInmobiliario(String agenteInmobiliario) =>
      _$this._agenteInmobiliario = agenteInmobiliario;

  ListBuilder<String> _amenidades;
  ListBuilder<String> get amenidades =>
      _$this._amenidades ??= new ListBuilder<String>();
  set amenidades(ListBuilder<String> amenidades) =>
      _$this._amenidades = amenidades;

  String _ciudad;
  String get ciudad => _$this._ciudad;
  set ciudad(String ciudad) => _$this._ciudad = ciudad;

  String _direccion;
  String get direccion => _$this._direccion;
  set direccion(String direccion) => _$this._direccion = direccion;

  String _etiquetaPromocion;
  String get etiquetaPromocion => _$this._etiquetaPromocion;
  set etiquetaPromocion(String etiquetaPromocion) =>
      _$this._etiquetaPromocion = etiquetaPromocion;

  ListBuilder<String> _etiquetas;
  ListBuilder<String> get etiquetas =>
      _$this._etiquetas ??= new ListBuilder<String>();
  set etiquetas(ListBuilder<String> etiquetas) => _$this._etiquetas = etiquetas;

  String _pais;
  String get pais => _$this._pais;
  set pais(String pais) => _$this._pais = pais;

  ListBuilder<String> _recorrido3D;
  ListBuilder<String> get recorrido3D =>
      _$this._recorrido3D ??= new ListBuilder<String>();
  set recorrido3D(ListBuilder<String> recorrido3D) =>
      _$this._recorrido3D = recorrido3D;

  String _sector;
  String get sector => _$this._sector;
  set sector(String sector) => _$this._sector = sector;

  ListBuilder<String> _video;
  ListBuilder<String> get video => _$this._video ??= new ListBuilder<String>();
  set video(ListBuilder<String> video) => _$this._video = video;

  LatLng _location;
  LatLng get location => _$this._location;
  set location(LatLng location) => _$this._location = location;

  ListBuilder<DocumentReference<Object>> _unidades;
  ListBuilder<DocumentReference<Object>> get unidades =>
      _$this._unidades ??= new ListBuilder<DocumentReference<Object>>();
  set unidades(ListBuilder<DocumentReference<Object>> unidades) =>
      _$this._unidades = unidades;

  DocumentReference<Object> _referencia;
  DocumentReference<Object> get referencia => _$this._referencia;
  set referencia(DocumentReference<Object> referencia) =>
      _$this._referencia = referencia;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProyectosRecordBuilder() {
    ProyectosRecord._initializeBuilder(this);
  }

  ProyectosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _entrada = $v.entrada;
      _constructora = $v.constructora;
      _reserva = $v.reserva;
      _fechaEntrega = $v.fechaEntrega;
      _galeria = $v.galeria?.toBuilder();
      _etapa = $v.etapa;
      _acabados = $v.acabados?.toBuilder();
      _agenteInmobiliario = $v.agenteInmobiliario;
      _amenidades = $v.amenidades?.toBuilder();
      _ciudad = $v.ciudad;
      _direccion = $v.direccion;
      _etiquetaPromocion = $v.etiquetaPromocion;
      _etiquetas = $v.etiquetas?.toBuilder();
      _pais = $v.pais;
      _recorrido3D = $v.recorrido3D?.toBuilder();
      _sector = $v.sector;
      _video = $v.video?.toBuilder();
      _location = $v.location;
      _unidades = $v.unidades?.toBuilder();
      _referencia = $v.referencia;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProyectosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProyectosRecord;
  }

  @override
  void update(void Function(ProyectosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProyectosRecord build() {
    _$ProyectosRecord _$result;
    try {
      _$result = _$v ??
          new _$ProyectosRecord._(
              nombre: nombre,
              entrada: entrada,
              constructora: constructora,
              reserva: reserva,
              fechaEntrega: fechaEntrega,
              galeria: _galeria?.build(),
              etapa: etapa,
              acabados: _acabados?.build(),
              agenteInmobiliario: agenteInmobiliario,
              amenidades: _amenidades?.build(),
              ciudad: ciudad,
              direccion: direccion,
              etiquetaPromocion: etiquetaPromocion,
              etiquetas: _etiquetas?.build(),
              pais: pais,
              recorrido3D: _recorrido3D?.build(),
              sector: sector,
              video: _video?.build(),
              location: location,
              unidades: _unidades?.build(),
              referencia: referencia,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'galeria';
        _galeria?.build();

        _$failedField = 'acabados';
        _acabados?.build();

        _$failedField = 'amenidades';
        _amenidades?.build();

        _$failedField = 'etiquetas';
        _etiquetas?.build();

        _$failedField = 'recorrido3D';
        _recorrido3D?.build();

        _$failedField = 'video';
        _video?.build();

        _$failedField = 'unidades';
        _unidades?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProyectosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
