// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'lazypoststwo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LazypoststwoEventTearOff {
  const _$LazypoststwoEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $LazypoststwoEvent = _$LazypoststwoEventTearOff();

/// @nodoc
mixin _$LazypoststwoEvent {
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
abstract class $LazypoststwoEventCopyWith<$Res> {
  factory $LazypoststwoEventCopyWith(
          LazypoststwoEvent value, $Res Function(LazypoststwoEvent) then) =
      _$LazypoststwoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LazypoststwoEventCopyWithImpl<$Res>
    implements $LazypoststwoEventCopyWith<$Res> {
  _$LazypoststwoEventCopyWithImpl(this._value, this._then);

  final LazypoststwoEvent _value;
  // ignore: unused_field
  final $Res Function(LazypoststwoEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$LazypoststwoEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LazypoststwoEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'LazypoststwoEvent.started'));
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

abstract class _Started implements LazypoststwoEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$LazypoststwoStateTearOff {
  const _$LazypoststwoStateTearOff();

  _LazypoststwoState call(
      {required PostStatus status,
      required List<Post> posts,
      required bool hasReachedMax,
      required Failures? failures}) {
    return _LazypoststwoState(
      status: status,
      posts: posts,
      hasReachedMax: hasReachedMax,
      failures: failures,
    );
  }
}

/// @nodoc
const $LazypoststwoState = _$LazypoststwoStateTearOff();

/// @nodoc
mixin _$LazypoststwoState {
  PostStatus get status => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Failures? get failures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LazypoststwoStateCopyWith<LazypoststwoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LazypoststwoStateCopyWith<$Res> {
  factory $LazypoststwoStateCopyWith(
          LazypoststwoState value, $Res Function(LazypoststwoState) then) =
      _$LazypoststwoStateCopyWithImpl<$Res>;
  $Res call(
      {PostStatus status,
      List<Post> posts,
      bool hasReachedMax,
      Failures? failures});

  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class _$LazypoststwoStateCopyWithImpl<$Res>
    implements $LazypoststwoStateCopyWith<$Res> {
  _$LazypoststwoStateCopyWithImpl(this._value, this._then);

  final LazypoststwoState _value;
  // ignore: unused_field
  final $Res Function(LazypoststwoState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
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
abstract class _$LazypoststwoStateCopyWith<$Res>
    implements $LazypoststwoStateCopyWith<$Res> {
  factory _$LazypoststwoStateCopyWith(
          _LazypoststwoState value, $Res Function(_LazypoststwoState) then) =
      __$LazypoststwoStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PostStatus status,
      List<Post> posts,
      bool hasReachedMax,
      Failures? failures});

  @override
  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class __$LazypoststwoStateCopyWithImpl<$Res>
    extends _$LazypoststwoStateCopyWithImpl<$Res>
    implements _$LazypoststwoStateCopyWith<$Res> {
  __$LazypoststwoStateCopyWithImpl(
      _LazypoststwoState _value, $Res Function(_LazypoststwoState) _then)
      : super(_value, (v) => _then(v as _LazypoststwoState));

  @override
  _LazypoststwoState get _value => super._value as _LazypoststwoState;

  @override
  $Res call({
    Object? status = freezed,
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_LazypoststwoState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PostStatus,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
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

class _$_LazypoststwoState
    with DiagnosticableTreeMixin
    implements _LazypoststwoState {
  const _$_LazypoststwoState(
      {required this.status,
      required this.posts,
      required this.hasReachedMax,
      required this.failures});

  @override
  final PostStatus status;
  @override
  final List<Post> posts;
  @override
  final bool hasReachedMax;
  @override
  final Failures? failures;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LazypoststwoState(status: $status, posts: $posts, hasReachedMax: $hasReachedMax, failures: $failures)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LazypoststwoState'))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('posts', posts))
      ..add(DiagnosticsProperty('hasReachedMax', hasReachedMax))
      ..add(DiagnosticsProperty('failures', failures));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LazypoststwoState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)) &&
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
      const DeepCollectionEquality().hash(posts) ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(failures);

  @JsonKey(ignore: true)
  @override
  _$LazypoststwoStateCopyWith<_LazypoststwoState> get copyWith =>
      __$LazypoststwoStateCopyWithImpl<_LazypoststwoState>(this, _$identity);
}

abstract class _LazypoststwoState implements LazypoststwoState {
  const factory _LazypoststwoState(
      {required PostStatus status,
      required List<Post> posts,
      required bool hasReachedMax,
      required Failures? failures}) = _$_LazypoststwoState;

  @override
  PostStatus get status => throw _privateConstructorUsedError;
  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  Failures? get failures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LazypoststwoStateCopyWith<_LazypoststwoState> get copyWith =>
      throw _privateConstructorUsedError;
}
