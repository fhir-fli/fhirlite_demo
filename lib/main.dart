import 'package:fhirlite/init.dart';
import 'package:flutter/material.dart';

const configFile = 'assets/config.json';

/// Will probably have a splash screen or something for loading assets
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Init('assets/config.json'));
}
