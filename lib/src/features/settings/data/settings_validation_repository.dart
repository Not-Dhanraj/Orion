import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr/radarr.dart';
import 'package:sonarr/sonarr.dart';

class SettingsValidationRepository {
  Future<void> validateSonarr(String url, String apiKey) async {
    final api = Sonarr(basePathOverride: url.toNormalizedUrl());
    api.setApiKey('X-Api-Key', apiKey);
    final response = await api.getSystemApi().apiV3SystemStatusGet();
    if (response.data == null) throw Exception('No data returned');
  }

  Future<void> validateRadarr(String url, String apiKey) async {
    final api = Radarr(basePathOverride: url.toNormalizedUrl());
    api.setApiKey('X-Api-Key', apiKey);
    final response = await api.getSystemApi().apiV3SystemStatusGet();
    if (response.data == null) throw Exception('No data returned');
  }
}

final settingsValidationRepositoryProvider =
    Provider<SettingsValidationRepository>(
      (_) => SettingsValidationRepository(),
    );
