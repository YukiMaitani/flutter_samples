// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tile {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;
  bool get isMine => throw _privateConstructorUsedError;
  bool get isFlagged => throw _privateConstructorUsedError;
  bool get isRevealed => throw _privateConstructorUsedError;
  int get adjacentBombs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)
        $default, {
    required TResult Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)
        before,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)?
        $default, {
    TResult? Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)?
        before,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)?
        $default, {
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)?
        before,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Tile value) $default, {
    required TResult Function(BeforeTile value) before,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Tile value)? $default, {
    TResult? Function(BeforeTile value)? before,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Tile value)? $default, {
    TResult Function(BeforeTile value)? before,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TileCopyWith<Tile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TileCopyWith<$Res> {
  factory $TileCopyWith(Tile value, $Res Function(Tile) then) =
      _$TileCopyWithImpl<$Res, Tile>;
  @useResult
  $Res call(
      {int x,
      int y,
      bool isMine,
      bool isFlagged,
      bool isRevealed,
      int adjacentBombs});
}

/// @nodoc
class _$TileCopyWithImpl<$Res, $Val extends Tile>
    implements $TileCopyWith<$Res> {
  _$TileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? isMine = null,
    Object? isFlagged = null,
    Object? isRevealed = null,
    Object? adjacentBombs = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      isFlagged: null == isFlagged
          ? _value.isFlagged
          : isFlagged // ignore: cast_nullable_to_non_nullable
              as bool,
      isRevealed: null == isRevealed
          ? _value.isRevealed
          : isRevealed // ignore: cast_nullable_to_non_nullable
              as bool,
      adjacentBombs: null == adjacentBombs
          ? _value.adjacentBombs
          : adjacentBombs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TileImplCopyWith<$Res> implements $TileCopyWith<$Res> {
  factory _$$TileImplCopyWith(
          _$TileImpl value, $Res Function(_$TileImpl) then) =
      __$$TileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int x,
      int y,
      bool isMine,
      bool isFlagged,
      bool isRevealed,
      int adjacentBombs});
}

/// @nodoc
class __$$TileImplCopyWithImpl<$Res>
    extends _$TileCopyWithImpl<$Res, _$TileImpl>
    implements _$$TileImplCopyWith<$Res> {
  __$$TileImplCopyWithImpl(_$TileImpl _value, $Res Function(_$TileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? isMine = null,
    Object? isFlagged = null,
    Object? isRevealed = null,
    Object? adjacentBombs = null,
  }) {
    return _then(_$TileImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      isFlagged: null == isFlagged
          ? _value.isFlagged
          : isFlagged // ignore: cast_nullable_to_non_nullable
              as bool,
      isRevealed: null == isRevealed
          ? _value.isRevealed
          : isRevealed // ignore: cast_nullable_to_non_nullable
              as bool,
      adjacentBombs: null == adjacentBombs
          ? _value.adjacentBombs
          : adjacentBombs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TileImpl extends _Tile {
  const _$TileImpl(
      {required this.x,
      required this.y,
      required this.isMine,
      required this.isFlagged,
      required this.isRevealed,
      required this.adjacentBombs})
      : super._();

  @override
  final int x;
  @override
  final int y;
  @override
  final bool isMine;
  @override
  final bool isFlagged;
  @override
  final bool isRevealed;
  @override
  final int adjacentBombs;

  @override
  String toString() {
    return 'Tile(x: $x, y: $y, isMine: $isMine, isFlagged: $isFlagged, isRevealed: $isRevealed, adjacentBombs: $adjacentBombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TileImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.isFlagged, isFlagged) ||
                other.isFlagged == isFlagged) &&
            (identical(other.isRevealed, isRevealed) ||
                other.isRevealed == isRevealed) &&
            (identical(other.adjacentBombs, adjacentBombs) ||
                other.adjacentBombs == adjacentBombs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, x, y, isMine, isFlagged, isRevealed, adjacentBombs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TileImplCopyWith<_$TileImpl> get copyWith =>
      __$$TileImplCopyWithImpl<_$TileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)
        $default, {
    required TResult Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)
        before,
  }) {
    return $default(x, y, isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)?
        $default, {
    TResult? Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)?
        before,
  }) {
    return $default?.call(x, y, isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)?
        $default, {
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)?
        before,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(x, y, isMine, isFlagged, isRevealed, adjacentBombs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Tile value) $default, {
    required TResult Function(BeforeTile value) before,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Tile value)? $default, {
    TResult? Function(BeforeTile value)? before,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Tile value)? $default, {
    TResult Function(BeforeTile value)? before,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Tile extends Tile {
  const factory _Tile(
      {required final int x,
      required final int y,
      required final bool isMine,
      required final bool isFlagged,
      required final bool isRevealed,
      required final int adjacentBombs}) = _$TileImpl;
  const _Tile._() : super._();

  @override
  int get x;
  @override
  int get y;
  @override
  bool get isMine;
  @override
  bool get isFlagged;
  @override
  bool get isRevealed;
  @override
  int get adjacentBombs;
  @override
  @JsonKey(ignore: true)
  _$$TileImplCopyWith<_$TileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BeforeTileImplCopyWith<$Res> implements $TileCopyWith<$Res> {
  factory _$$BeforeTileImplCopyWith(
          _$BeforeTileImpl value, $Res Function(_$BeforeTileImpl) then) =
      __$$BeforeTileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int x,
      int y,
      bool isMine,
      bool isFlagged,
      bool isRevealed,
      int adjacentBombs});
}

/// @nodoc
class __$$BeforeTileImplCopyWithImpl<$Res>
    extends _$TileCopyWithImpl<$Res, _$BeforeTileImpl>
    implements _$$BeforeTileImplCopyWith<$Res> {
  __$$BeforeTileImplCopyWithImpl(
      _$BeforeTileImpl _value, $Res Function(_$BeforeTileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? isMine = null,
    Object? isFlagged = null,
    Object? isRevealed = null,
    Object? adjacentBombs = null,
  }) {
    return _then(_$BeforeTileImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
      isMine: null == isMine
          ? _value.isMine
          : isMine // ignore: cast_nullable_to_non_nullable
              as bool,
      isFlagged: null == isFlagged
          ? _value.isFlagged
          : isFlagged // ignore: cast_nullable_to_non_nullable
              as bool,
      isRevealed: null == isRevealed
          ? _value.isRevealed
          : isRevealed // ignore: cast_nullable_to_non_nullable
              as bool,
      adjacentBombs: null == adjacentBombs
          ? _value.adjacentBombs
          : adjacentBombs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BeforeTileImpl extends BeforeTile {
  const _$BeforeTileImpl(
      {required this.x,
      required this.y,
      this.isMine = false,
      this.isFlagged = false,
      this.isRevealed = false,
      this.adjacentBombs = -1})
      : super._();

  @override
  final int x;
  @override
  final int y;
  @override
  @JsonKey()
  final bool isMine;
  @override
  @JsonKey()
  final bool isFlagged;
  @override
  @JsonKey()
  final bool isRevealed;
  @override
  @JsonKey()
  final int adjacentBombs;

  @override
  String toString() {
    return 'Tile.before(x: $x, y: $y, isMine: $isMine, isFlagged: $isFlagged, isRevealed: $isRevealed, adjacentBombs: $adjacentBombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeforeTileImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.isFlagged, isFlagged) ||
                other.isFlagged == isFlagged) &&
            (identical(other.isRevealed, isRevealed) ||
                other.isRevealed == isRevealed) &&
            (identical(other.adjacentBombs, adjacentBombs) ||
                other.adjacentBombs == adjacentBombs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, x, y, isMine, isFlagged, isRevealed, adjacentBombs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeforeTileImplCopyWith<_$BeforeTileImpl> get copyWith =>
      __$$BeforeTileImplCopyWithImpl<_$BeforeTileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)
        $default, {
    required TResult Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)
        before,
  }) {
    return before(x, y, isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)?
        $default, {
    TResult? Function(int x, int y, bool isMine, bool isFlagged,
            bool isRevealed, int adjacentBombs)?
        before,
  }) {
    return before?.call(x, y, isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)?
        $default, {
    TResult Function(int x, int y, bool isMine, bool isFlagged, bool isRevealed,
            int adjacentBombs)?
        before,
    required TResult orElse(),
  }) {
    if (before != null) {
      return before(x, y, isMine, isFlagged, isRevealed, adjacentBombs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Tile value) $default, {
    required TResult Function(BeforeTile value) before,
  }) {
    return before(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Tile value)? $default, {
    TResult? Function(BeforeTile value)? before,
  }) {
    return before?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Tile value)? $default, {
    TResult Function(BeforeTile value)? before,
    required TResult orElse(),
  }) {
    if (before != null) {
      return before(this);
    }
    return orElse();
  }
}

abstract class BeforeTile extends Tile {
  const factory BeforeTile(
      {required final int x,
      required final int y,
      final bool isMine,
      final bool isFlagged,
      final bool isRevealed,
      final int adjacentBombs}) = _$BeforeTileImpl;
  const BeforeTile._() : super._();

  @override
  int get x;
  @override
  int get y;
  @override
  bool get isMine;
  @override
  bool get isFlagged;
  @override
  bool get isRevealed;
  @override
  int get adjacentBombs;
  @override
  @JsonKey(ignore: true)
  _$$BeforeTileImplCopyWith<_$BeforeTileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
