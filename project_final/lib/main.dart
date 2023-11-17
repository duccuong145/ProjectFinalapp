import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:project_final/my_app.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyApp(),
  ));
}
