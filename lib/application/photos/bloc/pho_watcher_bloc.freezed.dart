// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pho_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PhoWatcherEventTearOff {
  const _$PhoWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $PhoWatcherEvent = _$PhoWatcherEventTearOff();

/// @nodoc
mixin _$PhoWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoWatcherEventCopyWith<$Res> {
  factory $PhoWatcherEventCopyWith(
          PhoWatcherEvent value, $Res Function(PhoWatcherEvent) then) =
      _$PhoWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoWatcherEventCopyWithImpl<$Res>
    implements $PhoWatcherEventCopyWith<$Res> {
  _$PhoWatcherEventCopyWithImpl(this._value, this._then);

  final PhoWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(PhoWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PhoWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PhoWatcherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PhoWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$PhoWatcherStateTearOff {
  const _$PhoWatcherStateTearOff();

  _PhoWatcherState call(
      {required PhoWatcherStatus status,
      required List<Photo> photos,
      required bool hasReachedMax,
      required Failures? failures}) {
    return _PhoWatcherState(
      status: status,
      photos: photos,
      hasReachedMax: hasReachedMax,
      failures: failures,
    );
  }
}

/// @nodoc
const $PhoWatcherState = _$PhoWatcherStateTearOff();

/// @nodoc
mixin _$PhoWatcherState {
  PhoWatcherStatus get status => throw _privateConstructorUsedError;
  List<Photo> get photos => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Failures? get failures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoWatcherStateCopyWith<PhoWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoWatcherStateCopyWith<$Res> {
  factory $PhoWatcherStateCopyWith(
          PhoWatcherState value, $Res Function(PhoWatcherState) then) =
      _$PhoWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {PhoWatcherStatus status,
      List<Photo> photos,
      bool hasReachedMax,
      Failures? failures});

  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class _$PhoWatcherStateCopyWithImpl<$Res>
    implements $PhoWatcherStateCopyWith<$Res> {
  _$PhoWatcherStateCopyWithImpl(this._value, this._then);

  final PhoWatcherState _value;
  // ignore: unused_field
  final $Res Function(PhoWatcherState) _then;

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
              as PhoWatcherStatus,
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
abstract class _$PhoWatcherStateCopyWith<$Res>
    implements $PhoWatcherStateCopyWith<$Res> {
  factory _$PhoWatcherStateCopyWith(
          _PhoWatcherState value, $Res Function(_PhoWatcherState) then) =
      __$PhoWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PhoWatcherStatus status,
      List<Photo> photos,
      bool hasReachedMax,
      Failures? failures});

  @override
  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class __$PhoWatcherStateCopyWithImpl<$Res>
    extends _$PhoWatcherStateCopyWithImpl<$Res>
    implements _$PhoWatcherStateCopyWith<$Res> {
  __$PhoWatcherStateCopyWithImpl(
      _PhoWatcherState _value, $Res Function(_PhoWatcherState) _then)
      : super(_value, (v) => _then(v as _PhoWatcherState));

  @override
  _PhoWatcherState get _value => super._value as _PhoWatcherState;

  @override
  $Res call({
    Object? status = freezed,
    Object? photos = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_PhoWatcherState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PhoWatcherStatus,
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

class _$_PhoWatcherState implements _PhoWatcherState {
  const _$_PhoWatcherState(
      {required this.status,
      required this.photos,
      required this.hasReachedMax,
      required this.failures});

  @override
  final PhoWatcherStatus status;
  @override
  final List<Photo> photos;
  @override
  final bool hasReachedMax;
  @override
  final Failures? failures;

  @override
  String toString() {
    return 'PhoWatcherState(status: $status, photos: $photos, hasReachedMax: $hasReachedMax, failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoWatcherState &&
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
  _$PhoWatcherStateCopyWith<_PhoWatcherState> get copyWith =>
      __$PhoWatcherStateCopyWithImpl<_PhoWatcherState>(this, _$identity);
}

abstract class _PhoWatcherState implements PhoWatcherState {
  const factory _PhoWatcherState(
      {required PhoWatcherStatus status,
      required List<Photo> photos,
      required bool hasReachedMax,
      required Failures? failures}) = _$_PhoWatcherState;

  @override
  PhoWatcherStatus get status => throw _privateConstructorUsedError;
  @override
  List<Photo> get photos => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  Failures? get failures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PhoWatcherStateCopyWith<_PhoWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
