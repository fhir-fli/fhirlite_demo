import 'dart:convert';

import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const configFile = 'assets/config.json';

/// Will probably have a splash screen or something for loading assets
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Map<String, dynamic> configAssets =
      jsonDecode(await rootBundle.loadString(configFile))
          as Map<String, dynamic>;
  ClientAssets customClientAssets() =>
      ClientAssets.fromJson(configAssets, GlobalKey<ScaffoldMessengerState>());
  getIt.registerSingleton<ClientAssets>(customClientAssets());
  runApp(const ProviderScope(child: Init(configFile)));
}
