// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Box {
  int get id => throw _privateConstructorUsedError;
  Offset get center => throw _privateConstructorUsedError;
  BoxType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoxCopyWith<Box> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoxCopyWith<$Res> {
  factory $BoxCopyWith(Box value, $Res Function(Box) then) =
      _$BoxCopyWithImpl<$Res, Box>;
  @useResult
  $Res call({int id, Offset center, BoxType type});
}

/// @nodoc
class _$BoxCopyWithImpl<$Res, $Val extends Box> implements $BoxCopyWith<$Res> {
  _$BoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? center = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Offset,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BoxType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoxImplCopyWith<$Res> implements $BoxCopyWith<$Res> {
  factory _$$BoxImplCopyWith(_$BoxImpl value, $Res Function(_$BoxImpl) then) =
      __$$BoxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Offset center, BoxType type});
}

/// @nodoc
class __$$BoxImplCopyWithImpl<$Res> extends _$BoxCopyWithImpl<$Res, _$BoxImpl>
    implements _$$BoxImplCopyWith<$Res> {
  __$$BoxImplCopyWithImpl(_$BoxImpl _value, $Res Function(_$BoxImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? center = null,
    Object? type = null,
  }) {
    return _then(_$BoxImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      center: null == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as Offset,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BoxType,
    ));
  }
}

/// @nodoc

class _$BoxImpl implements _Box {
  const _$BoxImpl({required this.id, required this.center, required this.type});

  @override
  final int id;
  @override
  final Offset center;
  @override
  final BoxType type;

  @override
  String toString() {
    return 'Box(id: $id, center: $center, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoxImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, center, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoxImplCopyWith<_$BoxImpl> get copyWith =>
      __$$BoxImplCopyWithImpl<_$BoxImpl>(this, _$identity);
}

abstract class _Box implements Box {
  const factory _Box(
      {required final int id,
      required final Offset center,
      required final BoxType type}) = _$BoxImpl;

  @override
  int get id;
  @override
  Offset get center;
  @override
  BoxType get type;
  @override
  @JsonKey(ignore: true)
  _$$BoxImplCopyWith<_$BoxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
