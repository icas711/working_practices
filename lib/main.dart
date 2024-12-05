import 'package:working_practices/app/config/build_type.dart';
import 'package:working_practices/app/config/environment.dart';
import 'package:working_practices/runner.dart';

void main() async {
  run(const Environment(buildType: BuildType.dev)).ignore();
}
