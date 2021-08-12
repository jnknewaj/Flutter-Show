// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'album_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumDto _$AlbumDtoFromJson(Map<String, dynamic> json) {
  return _AlbumDto.fromJson(json);
}

/// @nodoc
class _$AlbumDtoTearOff {
  const _$AlbumDtoTearOff();

  _AlbumDto call(
      {required int userId, required int id, required String title}) {
    return _AlbumDto(
      userId: userId,
      id: id,
      title: title,
    );
  }

  AlbumDto fromJson(Map<String, Object> json) {
    return AlbumDto.fromJson(json);
  }
}

/// @nodoc
const $AlbumDto = _$AlbumDtoTearOff();

/// @nodoc
mixin _$AlbumDto {
  int get userId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumDtoCopyWith<AlbumDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDtoCopyWith<$Res> {
  factory $AlbumDtoCopyWith(AlbumDto value, $Res Function(AlbumDto) then) =
      _$AlbumDtoCopyWithImpl<$Res>;
  $Res call({int userId, int id, String title});
}

/// @nodoc
class _$AlbumDtoCopyWithImpl<$Res> implements $AlbumDtoCopyWith<$Res> {
  _$AlbumDtoCopyWithImpl(this._value, this._then);

  final AlbumDto _value;
  // ignore: unused_field
  final $Res Function(AlbumDto) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AlbumDtoCopyWith<$Res> implements $AlbumDtoCopyWith<$Res> {
  factory _$AlbumDtoCopyWith(_AlbumDto value, $Res Function(_AlbumDto) then) =
      __$AlbumDtoCopyWithImpl<$Res>;
  @override
  $Res call({int userId, int id, String title});
}

/// @nodoc
class __$AlbumDtoCopyWithImpl<$Res> extends _$AlbumDtoCopyWithImpl<$Res>
    implements _$AlbumDtoCopyWith<$Res> {
  __$AlbumDtoCopyWithImpl(_AlbumDto _value, $Res Function(_AlbumDto) _then)
      : super(_value, (v) => _then(v as _AlbumDto));

  @override
  _AlbumDto get _value => super._value as _AlbumDto;

  @override
  $Res call({
    Object? userId = freezed,
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_AlbumDto(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumDto extends _AlbumDto {
  const _$_AlbumDto(
      {required this.userId, required this.id, required this.title})
      : super._();

  factory _$_AlbumDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AlbumDtoFromJson(json);

  @override
  final int userId;
  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'AlbumDto(userId: $userId, id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$AlbumDtoCopyWith<_AlbumDto> get copyWith =>
      __$AlbumDtoCopyWithImpl<_AlbumDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AlbumDtoToJson(this);
  }
}

abstract class _AlbumDto extends AlbumDto {
  const factory _AlbumDto(
      {required int userId,
      required int id,
      required String title}) = _$_AlbumDto;
  const _AlbumDto._() : super._();

  factory _AlbumDto.fromJson(Map<String, dynamic> json) = _$_AlbumDto.fromJson;

  @override
  int get userId => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumDtoCopyWith<_AlbumDto> get copyWith =>
      throw _privateConstructorUsedError;
}
