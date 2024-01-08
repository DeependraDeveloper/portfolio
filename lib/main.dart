import 'package:flutter/material.dart';
import 'package:personalportfolio/app.dart';
import 'package:personalportfolio/message_sheets_api.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MessageSheetsApi.init();
  runApp(
    const MyApp(),
  );
}
