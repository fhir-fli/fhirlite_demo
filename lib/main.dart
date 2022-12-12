import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';

/// Will probably have a splash screen or something for loading assets
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(fhirLite('assets/assets.json'));
}
