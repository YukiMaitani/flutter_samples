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
  bool get isMine => throw _privateConstructorUsedError;
  bool get isFlagged => throw _privateConstructorUsedError;
  bool get isRevealed => throw _privateConstructorUsedError;
  int get adjacentBombs => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)
        $default, {
    required TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)
        startBefore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        $default, {
    TResult? Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        startBefore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        $default, {
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        startBefore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Tile value) $default, {
    required TResult Function(StartBeforeTile value) startBefore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Tile value)? $default, {
    TResult? Function(StartBeforeTile value)? startBefore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Tile value)? $default, {
    TResult Function(StartBeforeTile value)? startBefore,
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
  $Res call({bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs});
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
    Object? isMine = null,
    Object? isFlagged = null,
    Object? isRevealed = null,
    Object? adjacentBombs = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs});
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
    Object? isMine = null,
    Object? isFlagged = null,
    Object? isRevealed = null,
    Object? adjacentBombs = null,
  }) {
    return _then(_$TileImpl(
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

class _$TileImpl implements _Tile {
  const _$TileImpl(
      {required this.isMine,
      required this.isFlagged,
      required this.isRevealed,
      required this.adjacentBombs});

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
    return 'Tile(isMine: $isMine, isFlagged: $isFlagged, isRevealed: $isRevealed, adjacentBombs: $adjacentBombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TileImpl &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.isFlagged, isFlagged) ||
                other.isFlagged == isFlagged) &&
            (identical(other.isRevealed, isRevealed) ||
                other.isRevealed == isRevealed) &&
            (identical(other.adjacentBombs, adjacentBombs) ||
                other.adjacentBombs == adjacentBombs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isMine, isFlagged, isRevealed, adjacentBombs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TileImplCopyWith<_$TileImpl> get copyWith =>
      __$$TileImplCopyWithImpl<_$TileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)
        $default, {
    required TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)
        startBefore,
  }) {
    return $default(isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        $default, {
    TResult? Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        startBefore,
  }) {
    return $default?.call(isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        $default, {
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        startBefore,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(isMine, isFlagged, isRevealed, adjacentBombs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Tile value) $default, {
    required TResult Function(StartBeforeTile value) startBefore,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Tile value)? $default, {
    TResult? Function(StartBeforeTile value)? startBefore,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Tile value)? $default, {
    TResult Function(StartBeforeTile value)? startBefore,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _Tile implements Tile {
  const factory _Tile(
      {required final bool isMine,
      required final bool isFlagged,
      required final bool isRevealed,
      required final int adjacentBombs}) = _$TileImpl;

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
abstract class _$$StartBeforeTileImplCopyWith<$Res>
    implements $TileCopyWith<$Res> {
  factory _$$StartBeforeTileImplCopyWith(_$StartBeforeTileImpl value,
          $Res Function(_$StartBeforeTileImpl) then) =
      __$$StartBeforeTileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs});
}

/// @nodoc
class __$$StartBeforeTileImplCopyWithImpl<$Res>
    extends _$TileCopyWithImpl<$Res, _$StartBeforeTileImpl>
    implements _$$StartBeforeTileImplCopyWith<$Res> {
  __$$StartBeforeTileImplCopyWithImpl(
      _$StartBeforeTileImpl _value, $Res Function(_$StartBeforeTileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMine = null,
    Object? isFlagged = null,
    Object? isRevealed = null,
    Object? adjacentBombs = null,
  }) {
    return _then(_$StartBeforeTileImpl(
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

class _$StartBeforeTileImpl implements StartBeforeTile {
  const _$StartBeforeTileImpl(
      {this.isMine = false,
      this.isFlagged = false,
      this.isRevealed = false,
      this.adjacentBombs = -1});

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
    return 'Tile.startBefore(isMine: $isMine, isFlagged: $isFlagged, isRevealed: $isRevealed, adjacentBombs: $adjacentBombs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartBeforeTileImpl &&
            (identical(other.isMine, isMine) || other.isMine == isMine) &&
            (identical(other.isFlagged, isFlagged) ||
                other.isFlagged == isFlagged) &&
            (identical(other.isRevealed, isRevealed) ||
                other.isRevealed == isRevealed) &&
            (identical(other.adjacentBombs, adjacentBombs) ||
                other.adjacentBombs == adjacentBombs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isMine, isFlagged, isRevealed, adjacentBombs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartBeforeTileImplCopyWith<_$StartBeforeTileImpl> get copyWith =>
      __$$StartBeforeTileImplCopyWithImpl<_$StartBeforeTileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)
        $default, {
    required TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)
        startBefore,
  }) {
    return startBefore(isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        $default, {
    TResult? Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        startBefore,
  }) {
    return startBefore?.call(isMine, isFlagged, isRevealed, adjacentBombs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        $default, {
    TResult Function(
            bool isMine, bool isFlagged, bool isRevealed, int adjacentBombs)?
        startBefore,
    required TResult orElse(),
  }) {
    if (startBefore != null) {
      return startBefore(isMine, isFlagged, isRevealed, adjacentBombs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Tile value) $default, {
    required TResult Function(StartBeforeTile value) startBefore,
  }) {
    return startBefore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Tile value)? $default, {
    TResult? Function(StartBeforeTile value)? startBefore,
  }) {
    return startBefore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Tile value)? $default, {
    TResult Function(StartBeforeTile value)? startBefore,
    required TResult orElse(),
  }) {
    if (startBefore != null) {
      return startBefore(this);
    }
    return orElse();
  }
}

abstract class StartBeforeTile implements Tile {
  const factory StartBeforeTile(
      {final bool isMine,
      final bool isFlagged,
      final bool isRevealed,
      final int adjacentBombs}) = _$StartBeforeTileImpl;

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
  _$$StartBeforeTileImplCopyWith<_$StartBeforeTileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
