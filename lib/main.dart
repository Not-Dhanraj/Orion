// Openapi Generator last run: : 2025-07-29T11:22:27.513949
import 'package:client/src/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'sonarr',
    pubAuthor: 'not-dhanraj',
  ),
  inputSpec: RemoteSpec(
    path:
        'https://raw.githubusercontent.com/Sonarr/Sonarr/develop/src/Sonarr.Api.V3/openapi.json',
  ),
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: 'api/sonarr_api',
)
class Sonarr {}