import 'package:flutter/material.dart';
import 'package:maya_maya_architecture/base/config/envs/dev_env.dart';
import 'package:maya_maya_architecture/maya_maya_app.dart';

void main() {
  // SecureStorage().loadSecureStorage(const FlutterSecureStorage());
  runApp(
    MayaMayaApp(env: DevEnv()),
  );
}
