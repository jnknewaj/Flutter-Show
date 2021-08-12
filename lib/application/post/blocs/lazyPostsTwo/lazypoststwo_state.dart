part of 'lazypoststwo_bloc.dart';

enum PostStatus { initial, success, failure }

@freezed
abstract class LazypoststwoState with _$LazypoststwoState {
  const factory LazypoststwoState({
    required PostStatus status,
    required List<Post> posts,
    required bool hasReachedMax,
    required Failures? failures,
  }) = _LazypoststwoState;

  factory LazypoststwoState.initial() => LazypoststwoState(
        status: PostStatus.initial,
        posts: [],
        hasReachedMax: false,
        failures: null,
      );
}
