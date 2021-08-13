import 'package:json_parsing/domain/core/failures.dart';

String mapFailuresToMessage(Failures failures) {
  return failures.map(
    serverFailure: (_) => 'Server Failure',
    unknownFailure: (_) => 'Unknown Failure',
    noInternet: (_) => 'No Internet Connection',
    noPosts: (_) => 'No More Post Available',
    noCachedPost: (_) => 'No Cached Data!',
    noComments: (_) => 'No Comments Found',
    noAlbums: (_) => 'No Albums Found',
    noPhotos: (_) => 'No More Photos!',
  );
}
