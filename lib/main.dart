import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';

/// Will probably have a splash screen or something for loading assets
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(home: LoginView(configs));
}

final configs = <String, dynamic>{
  'icon': 'assets/images/flames.gif',
};
