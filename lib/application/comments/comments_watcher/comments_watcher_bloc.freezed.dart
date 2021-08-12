// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'comments_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentsWatcherEventTearOff {
  const _$CommentsWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $CommentsWatcherEvent = _$CommentsWatcherEventTearOff();

/// @nodoc
mixin _$CommentsWatcherEvent {
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
abstract class $CommentsWatcherEventCopyWith<$Res> {
  factory $CommentsWatcherEventCopyWith(CommentsWatcherEvent value,
          $Res Function(CommentsWatcherEvent) then) =
      _$CommentsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CommentsWatcherEventCopyWithImpl<$Res>
    implements $CommentsWatcherEventCopyWith<$Res> {
  _$CommentsWatcherEventCopyWithImpl(this._value, this._then);

  final CommentsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CommentsWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$CommentsWatcherEventCopyWithImpl<$Res>
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
    return 'CommentsWatcherEvent.started()';
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

abstract class _Started implements CommentsWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$CommentsWatcherStateTearOff {
  const _$CommentsWatcherStateTearOff();

  _Initial call(
      {required CommentStatus status,
      required List<Comment> comments,
      required bool hasReachedMax,
      required Failures? failures}) {
    return _Initial(
      status: status,
      comments: comments,
      hasReachedMax: hasReachedMax,
      failures: failures,
    );
  }
}

/// @nodoc
const $CommentsWatcherState = _$CommentsWatcherStateTearOff();

/// @nodoc
mixin _$CommentsWatcherState {
  CommentStatus get status => throw _privateConstructorUsedError;
  List<Comment> get comments => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  Failures? get failures => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsWatcherStateCopyWith<CommentsWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsWatcherStateCopyWith<$Res> {
  factory $CommentsWatcherStateCopyWith(CommentsWatcherState value,
          $Res Function(CommentsWatcherState) then) =
      _$CommentsWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {CommentStatus status,
      List<Comment> comments,
      bool hasReachedMax,
      Failures? failures});

  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class _$CommentsWatcherStateCopyWithImpl<$Res>
    implements $CommentsWatcherStateCopyWith<$Res> {
  _$CommentsWatcherStateCopyWithImpl(this._value, this._then);

  final CommentsWatcherState _value;
  // ignore: unused_field
  final $Res Function(CommentsWatcherState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? comments = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
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
abstract class _$InitialCopyWith<$Res>
    implements $CommentsWatcherStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {CommentStatus status,
      List<Comment> comments,
      bool hasReachedMax,
      Failures? failures});

  @override
  $FailuresCopyWith<$Res>? get failures;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$CommentsWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? status = freezed,
    Object? comments = freezed,
    Object? hasReachedMax = freezed,
    Object? failures = freezed,
  }) {
    return _then(_Initial(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentStatus,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>,
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

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.status,
      required this.comments,
      required this.hasReachedMax,
      required this.failures});

  @override
  final CommentStatus status;
  @override
  final List<Comment> comments;
  @override
  final bool hasReachedMax;
  @override
  final Failures? failures;

  @override
  String toString() {
    return 'CommentsWatcherState(status: $status, comments: $comments, hasReachedMax: $hasReachedMax, failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.comments, comments) ||
                const DeepCollectionEquality()
                    .equals(other.comments, comments)) &&
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
      const DeepCollectionEquality().hash(comments) ^
      const DeepCollectionEquality().hash(hasReachedMax) ^
      const DeepCollectionEquality().hash(failures);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements CommentsWatcherState {
  const factory _Initial(
      {required CommentStatus status,
      required List<Comment> comments,
      required bool hasReachedMax,
      required Failures? failures}) = _$_Initial;

  @override
  CommentStatus get status => throw _privateConstructorUsedError;
  @override
  List<Comment> get comments => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  Failures? get failures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
