// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_helper_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterHelperState {
  CharacterStatus? get characterStatus => throw _privateConstructorUsedError;
  CharacterGender? get characterGender => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CharacterStatus? characterStatus, CharacterGender? characterGender)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CharacterStatus? characterStatus, CharacterGender? characterGender)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CharacterStatus? characterStatus, CharacterGender? characterGender)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FilterHelperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FilterHelperStateCopyWith<FilterHelperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterHelperStateCopyWith<$Res> {
  factory $FilterHelperStateCopyWith(
          FilterHelperState value, $Res Function(FilterHelperState) then) =
      _$FilterHelperStateCopyWithImpl<$Res, FilterHelperState>;
  @useResult
  $Res call(
      {CharacterStatus? characterStatus, CharacterGender? characterGender});
}

/// @nodoc
class _$FilterHelperStateCopyWithImpl<$Res, $Val extends FilterHelperState>
    implements $FilterHelperStateCopyWith<$Res> {
  _$FilterHelperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterHelperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterStatus = freezed,
    Object? characterGender = freezed,
  }) {
    return _then(_value.copyWith(
      characterStatus: freezed == characterStatus
          ? _value.characterStatus
          : characterStatus // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      characterGender: freezed == characterGender
          ? _value.characterGender
          : characterGender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $FilterHelperStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CharacterStatus? characterStatus, CharacterGender? characterGender});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$FilterHelperStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of FilterHelperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characterStatus = freezed,
    Object? characterGender = freezed,
  }) {
    return _then(_$DataImpl(
      characterStatus: freezed == characterStatus
          ? _value.characterStatus
          : characterStatus // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      characterGender: freezed == characterGender
          ? _value.characterGender
          : characterGender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl({this.characterStatus, this.characterGender});

  @override
  final CharacterStatus? characterStatus;
  @override
  final CharacterGender? characterGender;

  @override
  String toString() {
    return 'FilterHelperState.data(characterStatus: $characterStatus, characterGender: $characterGender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.characterStatus, characterStatus) ||
                other.characterStatus == characterStatus) &&
            (identical(other.characterGender, characterGender) ||
                other.characterGender == characterGender));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, characterStatus, characterGender);

  /// Create a copy of FilterHelperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            CharacterStatus? characterStatus, CharacterGender? characterGender)
        data,
  }) {
    return data(characterStatus, characterGender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            CharacterStatus? characterStatus, CharacterGender? characterGender)?
        data,
  }) {
    return data?.call(characterStatus, characterGender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            CharacterStatus? characterStatus, CharacterGender? characterGender)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(characterStatus, characterGender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements FilterHelperState {
  const factory _Data(
      {final CharacterStatus? characterStatus,
      final CharacterGender? characterGender}) = _$DataImpl;

  @override
  CharacterStatus? get characterStatus;
  @override
  CharacterGender? get characterGender;

  /// Create a copy of FilterHelperState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
