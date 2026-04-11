import 'package:client/src/app.dart';
import 'package:client/src/core/application/app_storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await appStorageService.init();
  runApp(const ProviderScope(child: Orion()));
}
