import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class Failures with _$Failures {
  const factory Failures.serverFailure() = _ServerFailure;
  const factory Failures.unknownFailure() = _UnknownFailure;
  const factory Failures.noInternet() = _NoInternet;
  const factory Failures.noPosts() = _NoPosts;
  const factory Failures.noCachedPost() = _NoCachedPost;
  const factory Failures.noComments() = _NoComments;
  const factory Failures.noAlbums() = _NoAlbums;
  const factory Failures.noPhotos() = _NoPhotos;
}
