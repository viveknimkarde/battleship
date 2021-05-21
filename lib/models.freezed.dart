// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BoardStateTearOff {
  const _$BoardStateTearOff();

  _BoardState call(
      {required List<ShipInfo> ships,
      required List<Coordinate> hits,
      required List<Coordinate> misses}) {
    return _BoardState(
      ships: ships,
      hits: hits,
      misses: misses,
    );
  }
}

/// @nodoc
const $BoardState = _$BoardStateTearOff();

/// @nodoc
mixin _$BoardState {
  List<ShipInfo> get ships => throw _privateConstructorUsedError;
  List<Coordinate> get hits => throw _privateConstructorUsedError;
  List<Coordinate> get misses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardStateCopyWith<BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardStateCopyWith<$Res> {
  factory $BoardStateCopyWith(
          BoardState value, $Res Function(BoardState) then) =
      _$BoardStateCopyWithImpl<$Res>;
  $Res call(
      {List<ShipInfo> ships, List<Coordinate> hits, List<Coordinate> misses});
}

/// @nodoc
class _$BoardStateCopyWithImpl<$Res> implements $BoardStateCopyWith<$Res> {
  _$BoardStateCopyWithImpl(this._value, this._then);

  final BoardState _value;
  // ignore: unused_field
  final $Res Function(BoardState) _then;

  @override
  $Res call({
    Object? ships = freezed,
    Object? hits = freezed,
    Object? misses = freezed,
  }) {
    return _then(_value.copyWith(
      ships: ships == freezed
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<ShipInfo>,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      misses: misses == freezed
          ? _value.misses
          : misses // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
    ));
  }
}

/// @nodoc
abstract class _$BoardStateCopyWith<$Res> implements $BoardStateCopyWith<$Res> {
  factory _$BoardStateCopyWith(
          _BoardState value, $Res Function(_BoardState) then) =
      __$BoardStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ShipInfo> ships, List<Coordinate> hits, List<Coordinate> misses});
}

/// @nodoc
class __$BoardStateCopyWithImpl<$Res> extends _$BoardStateCopyWithImpl<$Res>
    implements _$BoardStateCopyWith<$Res> {
  __$BoardStateCopyWithImpl(
      _BoardState _value, $Res Function(_BoardState) _then)
      : super(_value, (v) => _then(v as _BoardState));

  @override
  _BoardState get _value => super._value as _BoardState;

  @override
  $Res call({
    Object? ships = freezed,
    Object? hits = freezed,
    Object? misses = freezed,
  }) {
    return _then(_BoardState(
      ships: ships == freezed
          ? _value.ships
          : ships // ignore: cast_nullable_to_non_nullable
              as List<ShipInfo>,
      hits: hits == freezed
          ? _value.hits
          : hits // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
      misses: misses == freezed
          ? _value.misses
          : misses // ignore: cast_nullable_to_non_nullable
              as List<Coordinate>,
    ));
  }
}

/// @nodoc

class _$_BoardState implements _BoardState {
  const _$_BoardState(
      {required this.ships, required this.hits, required this.misses});

  @override
  final List<ShipInfo> ships;
  @override
  final List<Coordinate> hits;
  @override
  final List<Coordinate> misses;

  @override
  String toString() {
    return 'BoardState(ships: $ships, hits: $hits, misses: $misses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoardState &&
            (identical(other.ships, ships) ||
                const DeepCollectionEquality().equals(other.ships, ships)) &&
            (identical(other.hits, hits) ||
                const DeepCollectionEquality().equals(other.hits, hits)) &&
            (identical(other.misses, misses) ||
                const DeepCollectionEquality().equals(other.misses, misses)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ships) ^
      const DeepCollectionEquality().hash(hits) ^
      const DeepCollectionEquality().hash(misses);

  @JsonKey(ignore: true)
  @override
  _$BoardStateCopyWith<_BoardState> get copyWith =>
      __$BoardStateCopyWithImpl<_BoardState>(this, _$identity);
}

abstract class _BoardState implements BoardState {
  const factory _BoardState(
      {required List<ShipInfo> ships,
      required List<Coordinate> hits,
      required List<Coordinate> misses}) = _$_BoardState;

  @override
  List<ShipInfo> get ships => throw _privateConstructorUsedError;
  @override
  List<Coordinate> get hits => throw _privateConstructorUsedError;
  @override
  List<Coordinate> get misses => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BoardStateCopyWith<_BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CoordinateTearOff {
  const _$CoordinateTearOff();

  _Coordinate call({required int x, required int y}) {
    return _Coordinate(
      x: x,
      y: y,
    );
  }
}

/// @nodoc
const $Coordinate = _$CoordinateTearOff();

/// @nodoc
mixin _$Coordinate {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res>;
  $Res call({int x, int y});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res> implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  final Coordinate _value;
  // ignore: unused_field
  final $Res Function(Coordinate) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CoordinateCopyWith<$Res> implements $CoordinateCopyWith<$Res> {
  factory _$CoordinateCopyWith(
          _Coordinate value, $Res Function(_Coordinate) then) =
      __$CoordinateCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y});
}

/// @nodoc
class __$CoordinateCopyWithImpl<$Res> extends _$CoordinateCopyWithImpl<$Res>
    implements _$CoordinateCopyWith<$Res> {
  __$CoordinateCopyWithImpl(
      _Coordinate _value, $Res Function(_Coordinate) _then)
      : super(_value, (v) => _then(v as _Coordinate));

  @override
  _Coordinate get _value => super._value as _Coordinate;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_Coordinate(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Coordinate implements _Coordinate {
  const _$_Coordinate({required this.x, required this.y});

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'Coordinate(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Coordinate &&
            (identical(other.x, x) ||
                const DeepCollectionEquality().equals(other.x, x)) &&
            (identical(other.y, y) ||
                const DeepCollectionEquality().equals(other.y, y)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(x) ^
      const DeepCollectionEquality().hash(y);

  @JsonKey(ignore: true)
  @override
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      __$CoordinateCopyWithImpl<_Coordinate>(this, _$identity);
}

abstract class _Coordinate implements Coordinate {
  const factory _Coordinate({required int x, required int y}) = _$_Coordinate;

  @override
  int get x => throw _privateConstructorUsedError;
  @override
  int get y => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ShipInfoTearOff {
  const _$ShipInfoTearOff();

  _ShipInfo call(
      {required String id,
      required String image,
      required int length,
      required Coordinate start,
      required ShipOrientation orientation}) {
    return _ShipInfo(
      id: id,
      image: image,
      length: length,
      start: start,
      orientation: orientation,
    );
  }
}

/// @nodoc
const $ShipInfo = _$ShipInfoTearOff();

/// @nodoc
mixin _$ShipInfo {
  String get id => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  Coordinate get start => throw _privateConstructorUsedError;
  ShipOrientation get orientation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShipInfoCopyWith<ShipInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipInfoCopyWith<$Res> {
  factory $ShipInfoCopyWith(ShipInfo value, $Res Function(ShipInfo) then) =
      _$ShipInfoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String image,
      int length,
      Coordinate start,
      ShipOrientation orientation});

  $CoordinateCopyWith<$Res> get start;
}

/// @nodoc
class _$ShipInfoCopyWithImpl<$Res> implements $ShipInfoCopyWith<$Res> {
  _$ShipInfoCopyWithImpl(this._value, this._then);

  final ShipInfo _value;
  // ignore: unused_field
  final $Res Function(ShipInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? length = freezed,
    Object? start = freezed,
    Object? orientation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      orientation: orientation == freezed
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as ShipOrientation,
    ));
  }

  @override
  $CoordinateCopyWith<$Res> get start {
    return $CoordinateCopyWith<$Res>(_value.start, (value) {
      return _then(_value.copyWith(start: value));
    });
  }
}

/// @nodoc
abstract class _$ShipInfoCopyWith<$Res> implements $ShipInfoCopyWith<$Res> {
  factory _$ShipInfoCopyWith(_ShipInfo value, $Res Function(_ShipInfo) then) =
      __$ShipInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String image,
      int length,
      Coordinate start,
      ShipOrientation orientation});

  @override
  $CoordinateCopyWith<$Res> get start;
}

/// @nodoc
class __$ShipInfoCopyWithImpl<$Res> extends _$ShipInfoCopyWithImpl<$Res>
    implements _$ShipInfoCopyWith<$Res> {
  __$ShipInfoCopyWithImpl(_ShipInfo _value, $Res Function(_ShipInfo) _then)
      : super(_value, (v) => _then(v as _ShipInfo));

  @override
  _ShipInfo get _value => super._value as _ShipInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? length = freezed,
    Object? start = freezed,
    Object? orientation = freezed,
  }) {
    return _then(_ShipInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as Coordinate,
      orientation: orientation == freezed
          ? _value.orientation
          : orientation // ignore: cast_nullable_to_non_nullable
              as ShipOrientation,
    ));
  }
}

/// @nodoc

class _$_ShipInfo implements _ShipInfo {
  const _$_ShipInfo(
      {required this.id,
      required this.image,
      required this.length,
      required this.start,
      required this.orientation});

  @override
  final String id;
  @override
  final String image;
  @override
  final int length;
  @override
  final Coordinate start;
  @override
  final ShipOrientation orientation;

  @override
  String toString() {
    return 'ShipInfo(id: $id, image: $image, length: $length, start: $start, orientation: $orientation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShipInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.orientation, orientation) ||
                const DeepCollectionEquality()
                    .equals(other.orientation, orientation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(length) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(orientation);

  @JsonKey(ignore: true)
  @override
  _$ShipInfoCopyWith<_ShipInfo> get copyWith =>
      __$ShipInfoCopyWithImpl<_ShipInfo>(this, _$identity);
}

abstract class _ShipInfo implements ShipInfo {
  const factory _ShipInfo(
      {required String id,
      required String image,
      required int length,
      required Coordinate start,
      required ShipOrientation orientation}) = _$_ShipInfo;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get image => throw _privateConstructorUsedError;
  @override
  int get length => throw _privateConstructorUsedError;
  @override
  Coordinate get start => throw _privateConstructorUsedError;
  @override
  ShipOrientation get orientation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShipInfoCopyWith<_ShipInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
