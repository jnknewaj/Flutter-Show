part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = _Initial;
  const factory PostsState.loading() = _Loading;
  const factory PostsState.loaded(List<Post> posts) = _Loaded;
  const factory PostsState.failedToLoad(Failures failures) = _FailedToLoad;
}
