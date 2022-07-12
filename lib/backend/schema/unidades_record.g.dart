// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unidades_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnidadesRecord> _$unidadesRecordSerializer =
    new _$UnidadesRecordSerializer();

class _$UnidadesRecordSerializer
    implements StructuredSerializer<UnidadesRecord> {
  @override
  final Iterable<Type> types = const [UnidadesRecord, _$UnidadesRecord];
  @override
  final String wireName = 'UnidadesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UnidadesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.areaCubierta;
    if (value != null) {
      result
        ..add('areaCubierta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.areaTotal;
    if (value != null) {
      result
        ..add('areaTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.balcon;
    if (value != null) {
      result
        ..add('balcon')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.banoSocial;
    if (value != null) {
      result
        ..add('banoSocial')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.banos;
    if (value != null) {
      result
        ..add('banos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.categoriaPrestamo;
    if (value != null) {
      result
        ..add('categoriaPrestamo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.habitaciones;
    if (value != null) {
      result
        ..add('habitaciones')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.jardin;
    if (value != null) {
      result
        ..add('jardin')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.numeracion;
    if (value != null) {
      result
        ..add('numeracion')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.parqueaderos;
    if (value != null) {
      result
        ..add('parqueaderos')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.piso;
    if (value != null) {
      result
        ..add('piso')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.precioAnterior;
    if (value != null) {
      result
        ..add('precioAnterior')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.terraza;
    if (value != null) {
      result
        ..add('terraza')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
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
    value = object.galeria;
    if (value != null) {
      result
        ..add('galeria')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.proyecto;
    if (value != null) {
      result
        ..add('proyecto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.planos;
    if (value != null) {
      result
        ..add('planos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  UnidadesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnidadesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'areaCubierta':
          result.areaCubierta = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'areaTotal':
          result.areaTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'balcon':
          result.balcon = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'banoSocial':
          result.banoSocial = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'banos':
          result.banos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'categoriaPrestamo':
          result.categoriaPrestamo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'habitaciones':
          result.habitaciones = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'jardin':
          result.jardin = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'numeracion':
          result.numeracion = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'parqueaderos':
          result.parqueaderos = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'piso':
          result.piso = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precioAnterior':
          result.precioAnterior = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'terraza':
          result.terraza = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'recorrido3D':
          result.recorrido3D.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'galeria':
          result.galeria.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'proyecto':
          result.proyecto = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'planos':
          result.planos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
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

class _$UnidadesRecord extends UnidadesRecord {
  @override
  final double areaCubierta;
  @override
  final double areaTotal;
  @override
  final bool balcon;
  @override
  final int banoSocial;
  @override
  final int banos;
  @override
  final String categoriaPrestamo;
  @override
  final int habitaciones;
  @override
  final bool jardin;
  @override
  final int numeracion;
  @override
  final int parqueaderos;
  @override
  final int piso;
  @override
  final double precio;
  @override
  final double precioAnterior;
  @override
  final double terraza;
  @override
  final String tipo;
  @override
  final String titulo;
  @override
  final BuiltList<String> recorrido3D;
  @override
  final BuiltList<String> galeria;
  @override
  final DocumentReference<Object> proyecto;
  @override
  final BuiltList<String> planos;
  @override
  final DocumentReference<Object> reference;

  factory _$UnidadesRecord([void Function(UnidadesRecordBuilder) updates]) =>
      (new UnidadesRecordBuilder()..update(updates)).build();

  _$UnidadesRecord._(
      {this.areaCubierta,
      this.areaTotal,
      this.balcon,
      this.banoSocial,
      this.banos,
      this.categoriaPrestamo,
      this.habitaciones,
      this.jardin,
      this.numeracion,
      this.parqueaderos,
      this.piso,
      this.precio,
      this.precioAnterior,
      this.terraza,
      this.tipo,
      this.titulo,
      this.recorrido3D,
      this.galeria,
      this.proyecto,
      this.planos,
      this.reference})
      : super._();

  @override
  UnidadesRecord rebuild(void Function(UnidadesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnidadesRecordBuilder toBuilder() =>
      new UnidadesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnidadesRecord &&
        areaCubierta == other.areaCubierta &&
        areaTotal == other.areaTotal &&
        balcon == other.balcon &&
        banoSocial == other.banoSocial &&
        banos == other.banos &&
        categoriaPrestamo == other.categoriaPrestamo &&
        habitaciones == other.habitaciones &&
        jardin == other.jardin &&
        numeracion == other.numeracion &&
        parqueaderos == other.parqueaderos &&
        piso == other.piso &&
        precio == other.precio &&
        precioAnterior == other.precioAnterior &&
        terraza == other.terraza &&
        tipo == other.tipo &&
        titulo == other.titulo &&
        recorrido3D == other.recorrido3D &&
        galeria == other.galeria &&
        proyecto == other.proyecto &&
        planos == other.planos &&
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
                                                                            $jc($jc($jc(0, areaCubierta.hashCode), areaTotal.hashCode),
                                                                                balcon.hashCode),
                                                                            banoSocial.hashCode),
                                                                        banos.hashCode),
                                                                    categoriaPrestamo.hashCode),
                                                                habitaciones.hashCode),
                                                            jardin.hashCode),
                                                        numeracion.hashCode),
                                                    parqueaderos.hashCode),
                                                piso.hashCode),
                                            precio.hashCode),
                                        precioAnterior.hashCode),
                                    terraza.hashCode),
                                tipo.hashCode),
                            titulo.hashCode),
                        recorrido3D.hashCode),
                    galeria.hashCode),
                proyecto.hashCode),
            planos.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnidadesRecord')
          ..add('areaCubierta', areaCubierta)
          ..add('areaTotal', areaTotal)
          ..add('balcon', balcon)
          ..add('banoSocial', banoSocial)
          ..add('banos', banos)
          ..add('categoriaPrestamo', categoriaPrestamo)
          ..add('habitaciones', habitaciones)
          ..add('jardin', jardin)
          ..add('numeracion', numeracion)
          ..add('parqueaderos', parqueaderos)
          ..add('piso', piso)
          ..add('precio', precio)
          ..add('precioAnterior', precioAnterior)
          ..add('terraza', terraza)
          ..add('tipo', tipo)
          ..add('titulo', titulo)
          ..add('recorrido3D', recorrido3D)
          ..add('galeria', galeria)
          ..add('proyecto', proyecto)
          ..add('planos', planos)
          ..add('reference', reference))
        .toString();
  }
}

class UnidadesRecordBuilder
    implements Builder<UnidadesRecord, UnidadesRecordBuilder> {
  _$UnidadesRecord _$v;

  double _areaCubierta;
  double get areaCubierta => _$this._areaCubierta;
  set areaCubierta(double areaCubierta) => _$this._areaCubierta = areaCubierta;

  double _areaTotal;
  double get areaTotal => _$this._areaTotal;
  set areaTotal(double areaTotal) => _$this._areaTotal = areaTotal;

  bool _balcon;
  bool get balcon => _$this._balcon;
  set balcon(bool balcon) => _$this._balcon = balcon;

  int _banoSocial;
  int get banoSocial => _$this._banoSocial;
  set banoSocial(int banoSocial) => _$this._banoSocial = banoSocial;

  int _banos;
  int get banos => _$this._banos;
  set banos(int banos) => _$this._banos = banos;

  String _categoriaPrestamo;
  String get categoriaPrestamo => _$this._categoriaPrestamo;
  set categoriaPrestamo(String categoriaPrestamo) =>
      _$this._categoriaPrestamo = categoriaPrestamo;

  int _habitaciones;
  int get habitaciones => _$this._habitaciones;
  set habitaciones(int habitaciones) => _$this._habitaciones = habitaciones;

  bool _jardin;
  bool get jardin => _$this._jardin;
  set jardin(bool jardin) => _$this._jardin = jardin;

  int _numeracion;
  int get numeracion => _$this._numeracion;
  set numeracion(int numeracion) => _$this._numeracion = numeracion;

  int _parqueaderos;
  int get parqueaderos => _$this._parqueaderos;
  set parqueaderos(int parqueaderos) => _$this._parqueaderos = parqueaderos;

  int _piso;
  int get piso => _$this._piso;
  set piso(int piso) => _$this._piso = piso;

  double _precio;
  double get precio => _$this._precio;
  set precio(double precio) => _$this._precio = precio;

  double _precioAnterior;
  double get precioAnterior => _$this._precioAnterior;
  set precioAnterior(double precioAnterior) =>
      _$this._precioAnterior = precioAnterior;

  double _terraza;
  double get terraza => _$this._terraza;
  set terraza(double terraza) => _$this._terraza = terraza;

  String _tipo;
  String get tipo => _$this._tipo;
  set tipo(String tipo) => _$this._tipo = tipo;

  String _titulo;
  String get titulo => _$this._titulo;
  set titulo(String titulo) => _$this._titulo = titulo;

  ListBuilder<String> _recorrido3D;
  ListBuilder<String> get recorrido3D =>
      _$this._recorrido3D ??= new ListBuilder<String>();
  set recorrido3D(ListBuilder<String> recorrido3D) =>
      _$this._recorrido3D = recorrido3D;

  ListBuilder<String> _galeria;
  ListBuilder<String> get galeria =>
      _$this._galeria ??= new ListBuilder<String>();
  set galeria(ListBuilder<String> galeria) => _$this._galeria = galeria;

  DocumentReference<Object> _proyecto;
  DocumentReference<Object> get proyecto => _$this._proyecto;
  set proyecto(DocumentReference<Object> proyecto) =>
      _$this._proyecto = proyecto;

  ListBuilder<String> _planos;
  ListBuilder<String> get planos =>
      _$this._planos ??= new ListBuilder<String>();
  set planos(ListBuilder<String> planos) => _$this._planos = planos;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UnidadesRecordBuilder() {
    UnidadesRecord._initializeBuilder(this);
  }

  UnidadesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaCubierta = $v.areaCubierta;
      _areaTotal = $v.areaTotal;
      _balcon = $v.balcon;
      _banoSocial = $v.banoSocial;
      _banos = $v.banos;
      _categoriaPrestamo = $v.categoriaPrestamo;
      _habitaciones = $v.habitaciones;
      _jardin = $v.jardin;
      _numeracion = $v.numeracion;
      _parqueaderos = $v.parqueaderos;
      _piso = $v.piso;
      _precio = $v.precio;
      _precioAnterior = $v.precioAnterior;
      _terraza = $v.terraza;
      _tipo = $v.tipo;
      _titulo = $v.titulo;
      _recorrido3D = $v.recorrido3D?.toBuilder();
      _galeria = $v.galeria?.toBuilder();
      _proyecto = $v.proyecto;
      _planos = $v.planos?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnidadesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnidadesRecord;
  }

  @override
  void update(void Function(UnidadesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnidadesRecord build() {
    _$UnidadesRecord _$result;
    try {
      _$result = _$v ??
          new _$UnidadesRecord._(
              areaCubierta: areaCubierta,
              areaTotal: areaTotal,
              balcon: balcon,
              banoSocial: banoSocial,
              banos: banos,
              categoriaPrestamo: categoriaPrestamo,
              habitaciones: habitaciones,
              jardin: jardin,
              numeracion: numeracion,
              parqueaderos: parqueaderos,
              piso: piso,
              precio: precio,
              precioAnterior: precioAnterior,
              terraza: terraza,
              tipo: tipo,
              titulo: titulo,
              recorrido3D: _recorrido3D?.build(),
              galeria: _galeria?.build(),
              proyecto: proyecto,
              planos: _planos?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recorrido3D';
        _recorrido3D?.build();
        _$failedField = 'galeria';
        _galeria?.build();

        _$failedField = 'planos';
        _planos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UnidadesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
