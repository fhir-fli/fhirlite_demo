import 'dart:convert';

import 'package:fhirlite/fhirlite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is the path to the config file (currently json, but could be yaml
/// in the future), contains app information, including app name, links for
/// thinks like privacy policy, and theming information
const configFile = 'assets/config.json';

/// Could move this to primary repo for production, but loading ClientAssets
/// here prevents some errors being throw on refresh during dev
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Read the client assets from file
  final Map<String, dynamic> configAssets =
      jsonDecode(await rootBundle.loadString(configFile))
          as Map<String, dynamic>;

  /// Assign the client assets to the getIt singleton
  getIt.registerSingleton<ClientAssets>(
      ClientAssets.fromJson(configAssets, GlobalKey<ScaffoldMessengerState>()));

  /// Ensure you include the Provider scope, and call the Init widget (this
  /// initializes all of our async things prior to running the app)
  runApp(const ProviderScope(child: Init(configFile)));
}
