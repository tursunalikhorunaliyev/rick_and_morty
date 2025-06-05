// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CharacterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? name, CharacterStatus? status,
            String? species, String? type, CharacterGender? gender, int page)
        getCharacters,
    required TResult Function() getFavoriteCharacters,
    required TResult Function() addToFavorite,
    required TResult Function() removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult? Function()? getFavoriteCharacters,
    TResult? Function()? addToFavorite,
    TResult? Function()? removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult Function()? getFavoriteCharacters,
    TResult Function()? addToFavorite,
    TResult Function()? removeFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetFavoriteCharacters value)
        getFavoriteCharacters,
    required TResult Function(_AddToFavorite value) addToFavorite,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult? Function(_AddToFavorite value)? addToFavorite,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult Function(_AddToFavorite value)? addToFavorite,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterEventCopyWith<$Res> {
  factory $CharacterEventCopyWith(
          CharacterEvent value, $Res Function(CharacterEvent) then) =
      _$CharacterEventCopyWithImpl<$Res, CharacterEvent>;
}

/// @nodoc
class _$CharacterEventCopyWithImpl<$Res, $Val extends CharacterEvent>
    implements $CharacterEventCopyWith<$Res> {
  _$CharacterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CharacterEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? name, CharacterStatus? status,
            String? species, String? type, CharacterGender? gender, int page)
        getCharacters,
    required TResult Function() getFavoriteCharacters,
    required TResult Function() addToFavorite,
    required TResult Function() removeFromFavorite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult? Function()? getFavoriteCharacters,
    TResult? Function()? addToFavorite,
    TResult? Function()? removeFromFavorite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult Function()? getFavoriteCharacters,
    TResult Function()? addToFavorite,
    TResult Function()? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetFavoriteCharacters value)
        getFavoriteCharacters,
    required TResult Function(_AddToFavorite value) addToFavorite,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult? Function(_AddToFavorite value)? addToFavorite,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult Function(_AddToFavorite value)? addToFavorite,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CharacterEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetCharactersImplCopyWith<$Res> {
  factory _$$GetCharactersImplCopyWith(
          _$GetCharactersImpl value, $Res Function(_$GetCharactersImpl) then) =
      __$$GetCharactersImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? name,
      CharacterStatus? status,
      String? species,
      String? type,
      CharacterGender? gender,
      int page});
}

/// @nodoc
class __$$GetCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$GetCharactersImpl>
    implements _$$GetCharactersImplCopyWith<$Res> {
  __$$GetCharactersImplCopyWithImpl(
      _$GetCharactersImpl _value, $Res Function(_$GetCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? status = freezed,
    Object? species = freezed,
    Object? type = freezed,
    Object? gender = freezed,
    Object? page = null,
  }) {
    return _then(_$GetCharactersImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CharacterStatus?,
      species: freezed == species
          ? _value.species
          : species // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as CharacterGender?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCharactersImpl implements _GetCharacters {
  const _$GetCharactersImpl(
      {this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      required this.page});

  @override
  final String? name;
  @override
  final CharacterStatus? status;
  @override
  final String? species;
  @override
  final String? type;
  @override
  final CharacterGender? gender;
  @override
  final int page;

  @override
  String toString() {
    return 'CharacterEvent.getCharacters(name: $name, status: $status, species: $species, type: $type, gender: $gender, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCharactersImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.species, species) || other.species == species) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, status, species, type, gender, page);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      __$$GetCharactersImplCopyWithImpl<_$GetCharactersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? name, CharacterStatus? status,
            String? species, String? type, CharacterGender? gender, int page)
        getCharacters,
    required TResult Function() getFavoriteCharacters,
    required TResult Function() addToFavorite,
    required TResult Function() removeFromFavorite,
  }) {
    return getCharacters(name, status, species, type, gender, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult? Function()? getFavoriteCharacters,
    TResult? Function()? addToFavorite,
    TResult? Function()? removeFromFavorite,
  }) {
    return getCharacters?.call(name, status, species, type, gender, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult Function()? getFavoriteCharacters,
    TResult Function()? addToFavorite,
    TResult Function()? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(name, status, species, type, gender, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetFavoriteCharacters value)
        getFavoriteCharacters,
    required TResult Function(_AddToFavorite value) addToFavorite,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
  }) {
    return getCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult? Function(_AddToFavorite value)? addToFavorite,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return getCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult Function(_AddToFavorite value)? addToFavorite,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (getCharacters != null) {
      return getCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetCharacters implements CharacterEvent {
  const factory _GetCharacters(
      {final String? name,
      final CharacterStatus? status,
      final String? species,
      final String? type,
      final CharacterGender? gender,
      required final int page}) = _$GetCharactersImpl;

  String? get name;
  CharacterStatus? get status;
  String? get species;
  String? get type;
  CharacterGender? get gender;
  int get page;

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCharactersImplCopyWith<_$GetCharactersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavoriteCharactersImplCopyWith<$Res> {
  factory _$$GetFavoriteCharactersImplCopyWith(
          _$GetFavoriteCharactersImpl value,
          $Res Function(_$GetFavoriteCharactersImpl) then) =
      __$$GetFavoriteCharactersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoriteCharactersImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$GetFavoriteCharactersImpl>
    implements _$$GetFavoriteCharactersImplCopyWith<$Res> {
  __$$GetFavoriteCharactersImplCopyWithImpl(_$GetFavoriteCharactersImpl _value,
      $Res Function(_$GetFavoriteCharactersImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetFavoriteCharactersImpl implements _GetFavoriteCharacters {
  const _$GetFavoriteCharactersImpl();

  @override
  String toString() {
    return 'CharacterEvent.getFavoriteCharacters()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFavoriteCharactersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? name, CharacterStatus? status,
            String? species, String? type, CharacterGender? gender, int page)
        getCharacters,
    required TResult Function() getFavoriteCharacters,
    required TResult Function() addToFavorite,
    required TResult Function() removeFromFavorite,
  }) {
    return getFavoriteCharacters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult? Function()? getFavoriteCharacters,
    TResult? Function()? addToFavorite,
    TResult? Function()? removeFromFavorite,
  }) {
    return getFavoriteCharacters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult Function()? getFavoriteCharacters,
    TResult Function()? addToFavorite,
    TResult Function()? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (getFavoriteCharacters != null) {
      return getFavoriteCharacters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetFavoriteCharacters value)
        getFavoriteCharacters,
    required TResult Function(_AddToFavorite value) addToFavorite,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
  }) {
    return getFavoriteCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult? Function(_AddToFavorite value)? addToFavorite,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return getFavoriteCharacters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult Function(_AddToFavorite value)? addToFavorite,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (getFavoriteCharacters != null) {
      return getFavoriteCharacters(this);
    }
    return orElse();
  }
}

abstract class _GetFavoriteCharacters implements CharacterEvent {
  const factory _GetFavoriteCharacters() = _$GetFavoriteCharactersImpl;
}

/// @nodoc
abstract class _$$AddToFavoriteImplCopyWith<$Res> {
  factory _$$AddToFavoriteImplCopyWith(
          _$AddToFavoriteImpl value, $Res Function(_$AddToFavoriteImpl) then) =
      __$$AddToFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToFavoriteImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$AddToFavoriteImpl>
    implements _$$AddToFavoriteImplCopyWith<$Res> {
  __$$AddToFavoriteImplCopyWithImpl(
      _$AddToFavoriteImpl _value, $Res Function(_$AddToFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddToFavoriteImpl implements _AddToFavorite {
  const _$AddToFavoriteImpl();

  @override
  String toString() {
    return 'CharacterEvent.addToFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? name, CharacterStatus? status,
            String? species, String? type, CharacterGender? gender, int page)
        getCharacters,
    required TResult Function() getFavoriteCharacters,
    required TResult Function() addToFavorite,
    required TResult Function() removeFromFavorite,
  }) {
    return addToFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult? Function()? getFavoriteCharacters,
    TResult? Function()? addToFavorite,
    TResult? Function()? removeFromFavorite,
  }) {
    return addToFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult Function()? getFavoriteCharacters,
    TResult Function()? addToFavorite,
    TResult Function()? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (addToFavorite != null) {
      return addToFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetFavoriteCharacters value)
        getFavoriteCharacters,
    required TResult Function(_AddToFavorite value) addToFavorite,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
  }) {
    return addToFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult? Function(_AddToFavorite value)? addToFavorite,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return addToFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult Function(_AddToFavorite value)? addToFavorite,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (addToFavorite != null) {
      return addToFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorite implements CharacterEvent {
  const factory _AddToFavorite() = _$AddToFavoriteImpl;
}

/// @nodoc
abstract class _$$RemoveFromFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFromFavoriteImplCopyWith(_$RemoveFromFavoriteImpl value,
          $Res Function(_$RemoveFromFavoriteImpl) then) =
      __$$RemoveFromFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveFromFavoriteImplCopyWithImpl<$Res>
    extends _$CharacterEventCopyWithImpl<$Res, _$RemoveFromFavoriteImpl>
    implements _$$RemoveFromFavoriteImplCopyWith<$Res> {
  __$$RemoveFromFavoriteImplCopyWithImpl(_$RemoveFromFavoriteImpl _value,
      $Res Function(_$RemoveFromFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveFromFavoriteImpl implements _RemoveFromFavorite {
  const _$RemoveFromFavoriteImpl();

  @override
  String toString() {
    return 'CharacterEvent.removeFromFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveFromFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String? name, CharacterStatus? status,
            String? species, String? type, CharacterGender? gender, int page)
        getCharacters,
    required TResult Function() getFavoriteCharacters,
    required TResult Function() addToFavorite,
    required TResult Function() removeFromFavorite,
  }) {
    return removeFromFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult? Function()? getFavoriteCharacters,
    TResult? Function()? addToFavorite,
    TResult? Function()? removeFromFavorite,
  }) {
    return removeFromFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String? name, CharacterStatus? status, String? species,
            String? type, CharacterGender? gender, int page)?
        getCharacters,
    TResult Function()? getFavoriteCharacters,
    TResult Function()? addToFavorite,
    TResult Function()? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetCharacters value) getCharacters,
    required TResult Function(_GetFavoriteCharacters value)
        getFavoriteCharacters,
    required TResult Function(_AddToFavorite value) addToFavorite,
    required TResult Function(_RemoveFromFavorite value) removeFromFavorite,
  }) {
    return removeFromFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetCharacters value)? getCharacters,
    TResult? Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult? Function(_AddToFavorite value)? addToFavorite,
    TResult? Function(_RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return removeFromFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetCharacters value)? getCharacters,
    TResult Function(_GetFavoriteCharacters value)? getFavoriteCharacters,
    TResult Function(_AddToFavorite value)? addToFavorite,
    TResult Function(_RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavorite implements CharacterEvent {
  const factory _RemoveFromFavorite() = _$RemoveFromFavoriteImpl;
}

/// @nodoc
mixin _$CharacterState {
  CharacterLoadingType get loadingType => throw _privateConstructorUsedError;
  List<Character> get characters => throw _privateConstructorUsedError;
  List<Character> get favorites => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharacterLoadingType loadingType,
            List<Character> characters, List<Character> favorites)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharacterLoadingType loadingType,
            List<Character> characters, List<Character> favorites)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharacterLoadingType loadingType,
            List<Character> characters, List<Character> favorites)?
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

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CharacterStateCopyWith<CharacterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharacterStateCopyWith<$Res> {
  factory $CharacterStateCopyWith(
          CharacterState value, $Res Function(CharacterState) then) =
      _$CharacterStateCopyWithImpl<$Res, CharacterState>;
  @useResult
  $Res call(
      {CharacterLoadingType loadingType,
      List<Character> characters,
      List<Character> favorites});
}

/// @nodoc
class _$CharacterStateCopyWithImpl<$Res, $Val extends CharacterState>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingType = null,
    Object? characters = null,
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      loadingType: null == loadingType
          ? _value.loadingType
          : loadingType // ignore: cast_nullable_to_non_nullable
              as CharacterLoadingType,
      characters: null == characters
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res>
    implements $CharacterStateCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CharacterLoadingType loadingType,
      List<Character> characters,
      List<Character> favorites});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$CharacterStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingType = null,
    Object? characters = null,
    Object? favorites = null,
  }) {
    return _then(_$DataImpl(
      loadingType: null == loadingType
          ? _value.loadingType
          : loadingType // ignore: cast_nullable_to_non_nullable
              as CharacterLoadingType,
      characters: null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Character>,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl(
      {required this.loadingType,
      required final List<Character> characters,
      required final List<Character> favorites})
      : _characters = characters,
        _favorites = favorites;

  @override
  final CharacterLoadingType loadingType;
  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<Character> _favorites;
  @override
  List<Character> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'CharacterState.data(loadingType: $loadingType, characters: $characters, favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.loadingType, loadingType) ||
                other.loadingType == loadingType) &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadingType,
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_favorites));

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CharacterLoadingType loadingType,
            List<Character> characters, List<Character> favorites)
        data,
  }) {
    return data(loadingType, characters, favorites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CharacterLoadingType loadingType,
            List<Character> characters, List<Character> favorites)?
        data,
  }) {
    return data?.call(loadingType, characters, favorites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CharacterLoadingType loadingType,
            List<Character> characters, List<Character> favorites)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(loadingType, characters, favorites);
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

abstract class _Data implements CharacterState {
  const factory _Data(
      {required final CharacterLoadingType loadingType,
      required final List<Character> characters,
      required final List<Character> favorites}) = _$DataImpl;

  @override
  CharacterLoadingType get loadingType;
  @override
  List<Character> get characters;
  @override
  List<Character> get favorites;

  /// Create a copy of CharacterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
