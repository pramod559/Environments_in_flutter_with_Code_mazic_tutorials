import 'package:code_mazic/app_widget.dart';
import 'package:code_mazic/config_reader.dart';
import 'package:code_mazic/environment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void mainCommon(String env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await ConfigReader.initialize();

  Color primaryColor;
  switch (env) {
    case Environment.dev:
      primaryColor = Colors.blue;
      break;
    case Environment.prod:
      primaryColor = Colors.red;
      break;
  }

  runApp(
    MyApp(),
  );
}

class ColorProvider with ChangeNotifier {
  Color _primaryColor;

  ColorProvider(this._primaryColor);

  Color get primaryColor => _primaryColor;
}
