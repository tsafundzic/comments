import 'package:flutter/material.dart';

enum BuildFlavor { dev, staging, prod }

BuildEnvironment get env => _env;
late BuildEnvironment _env;

class BuildEnvironment {
  final BuildFlavor flavor;
  final String baseUrl;

  BuildEnvironment._init({required this.flavor, required this.baseUrl});

  static void init({@required flavor, @required baseUrl}) => _env = BuildEnvironment._init(flavor: flavor, baseUrl: baseUrl);
}
