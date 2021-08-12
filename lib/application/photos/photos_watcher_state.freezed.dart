// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'photos_watcher_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhotosWatcherStateTearOff {
  const _$PhotosWatcherStateTearOff();

  _PhotosWatcherState call(
      {required PhotosWatcherStatus status,
      required List<Photo> photos,
      required bool hasReachedMax,
      required Failures? failures}) {
    return _PhotosWatcherState(
      status: status,
      photos: photos,
      hasReachedMax: hasReachedMax,
      failures: failures,
    );
  }
}

/// @nodoc
const $PhotosWatcherState = _$PhotosWatcherStateTearOff();

/// @nodoc
mixin _$PhotosWatcherState {
  PhotosWatcherStatus get status => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Failures? get failures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotosWatcherStateCopyWith<PhotosWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotosWatcherStateCopyWith<$Res> {
  factory $PhotosWatcherStateCopyWith(
          PhotosWatcherState value, $Res Function(PhotosWatcherState) then) =
      _$PhotosWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {PhotosWatcherStatus status,
      List<Photo> photos,
      bool hasReachedMax,
      Failures? failures});

  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class _$PhotosWatcherStateCopyWithImpl<$Res>
    implements $PhotosWatcherStateCopyWith<$Res> {
  _$PhotosWatcherStateCopyWithImpl(this._value, this._then);

  final PhotosWatcherState _value;
  // ignore: unused_field
  final $Res Function(PhotosWatcherState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? photos = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhotosWatcherStatus,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      failures: failures == freezed
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }

  @override
  $FailuresCopyWith<$Res>? get failures {
    if (_value.failures == null) {
      return null;
    }

    return $FailuresCopyWith<$Res>(_value.failures!, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

/// @nodoc
abstract class _$PhotosWatcherStateCopyWith<$Res>
    implements $PhotosWatcherStateCopyWith<$Res> {
  factory _$PhotosWatcherStateCopyWith(
          _PhotosWatcherState value, $Res Function(_PhotosWatcherState) then) =
      __$PhotosWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhotosWatcherStatus status,
      List<Photo> photos,
      bool hasReachedMax,
      Failures? failures});

  @override
  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class __$PhotosWatcherStateCopyWithImpl<$Res>
    extends _$PhotosWatcherStateCopyWithImpl<$Res>
    implements _$PhotosWatcherStateCopyWith<$Res> {
  __$PhotosWatcherStateCopyWithImpl(
      _PhotosWatcherState _value, $Res Function(_PhotosWatcherState) _then)
      : super(_value, (v) => _then(v as _PhotosWatcherState));

  @override
  _PhotosWatcherState get _value => super._value as _PhotosWatcherState;

  @override
  $Res call({
    Object? status = freezed,
    Object? photos = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_PhotosWatcherState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhotosWatcherStatus,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      failures: failures == freezed
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as Failures?,
    ));
  }
}

/// @nodoc

class _$_PhotosWatcherState implements _PhotosWatcherState {
  const _$_PhotosWatcherState(
      {required this.status,
      required this.photos,
      required this.hasReachedMax,
      required this.failures});

  @override
  final PhotosWatcherStatus status;
  @override
  final List<Photo> photos;
  @override
  final bool hasReachedMax;
  @override
  final Failures? failures;

  @override
  String toString() {
    return 'PhotosWatcherState(status: $status, photos: $photos, hasReachedMax: $hasReachedMax, failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhotosWatcherState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                const DeepCollectionEquality()
                    .equals(other.hasReachedMax, hasReachedMax)) &&
            (identical(other.failures, failures) ||
                const DeepCollectionEquality()
                    .equals(other.failures, failures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(photos) ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(failures);

  @JsonKey(ignore: true)
  @override
  _$PhotosWatcherStateCopyWith<_PhotosWatcherState> get copyWith =>
      __$PhotosWatcherStateCopyWithImpl<_PhotosWatcherState>(this, _$identity);
}

abstract class _PhotosWatcherState implements PhotosWatcherState {
  const factory _PhotosWatcherState(
      {required PhotosWatcherStatus status,
      required List<Photo> photos,
      required bool hasReachedMax,
      required Failures? failures}) = _$_PhotosWatcherState;

  @override
  PhotosWatcherStatus get status => throw _privateConstructorUsedError;
  @override
  List<Photo> get photos => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  Failures? get failures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhotosWatcherStateCopyWith<_PhotosWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
