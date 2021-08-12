import 'package:flutter/material.dart';
import 'package:json_parsing/domain/core/failures.dart';

class Helper {
  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeight(BuildContext context) {
    return screenSize(context).height;
  }

  static double getScreenWidth(BuildContext context) {
    return screenSize(context).width;
  }

  static double screenHeightPortion(
    BuildContext context, {
    double time = 1,
    double reducedBy = 0.0,
  }) {
    return (screenSize(context).height * time) - reducedBy;
  }

  static double screenWidthPortion(
    BuildContext context, {
    double time = 1,
    double reducedBy = 0.0,
  }) {
    return (screenSize(context).width * time) - reducedBy;
  }
}

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
