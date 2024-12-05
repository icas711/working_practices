

import 'package:working_practices/app/api/url.dart';
import 'package:working_practices/app/config/build_type.dart';

class Environment {
  /// Build type.
  final BuildType buildType;

  /// Firebase options for initialize.
  //final FirebaseOptions? firebaseOptions;

  /// Is this application running in dev mode.
  bool get isDev => buildType == BuildType.dev;

  /// Is this application running in prod mode.
  bool get isProd => buildType == BuildType.prod;

  /// {@macro environment.class}
  const Environment({
    required this.buildType,
   // this.firebaseOptions,
  });
}

/// [BuildType] extension for default url.
extension BuildTypeX on BuildType {
  /// Default url for build type.
  Url get defaultUrl => switch (this) {
    BuildType.dev => Url.dev,
    BuildType.prod => Url.prod,
  };
}