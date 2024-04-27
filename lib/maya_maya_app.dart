import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maya_maya_architecture/app/routes/app_pages.dart';
import 'package:maya_maya_architecture/base/config/env.dart';

class MayaMayaApp extends StatefulWidget {
  final EnvVars env;

  const MayaMayaApp({super.key, required this.env});

  @override
  State<MayaMayaApp> createState() => _AppState();
}

class _AppState extends State<MayaMayaApp> {
  @override
  void initState() {
    Env().loadVars(widget.env);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Env().title,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
