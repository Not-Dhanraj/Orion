import 'package:client/src/shared/utils/string_extension.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radarr_api/radarr_api.dart';
import 'package:sonarr_api/sonarr_api.dart';

class SettingsValidationRepository {
  Future<void> validateSonarr(String url, String apiKey) async {
    final api = SonarrApi(basePathOverride: url.toNormalizedUrl());
    api.setApiKey('X-Api-Key', apiKey);
    final response = await api.getSystemApi().apiV3SystemStatusGet();
    if (response.data == null) throw Exception('No data returned');
  }

  Future<void> validateRadarr(String url, String apiKey) async {
    final api = RadarrApi(basePathOverride: url.toNormalizedUrl());
    api.setApiKey('X-Api-Key', apiKey);
    final response = await api.getSystemApi().apiV3SystemStatusGet();
    if (response.data == null) throw Exception('No data returned');
  }
}

final settingsValidationRepositoryProvider =
    Provider<SettingsValidationRepository>(
      (_) => SettingsValidationRepository(),
    );
