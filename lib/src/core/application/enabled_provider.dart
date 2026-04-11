import 'package:client/src/core/application/app_storage_service.dart';
import 'package:client/src/core/domain/enabled.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EnabledNotifier extends Notifier<Enabled> {
  @override
  build() {
    final credentialService = ref.watch(appStorageProvider);
    return Enabled(
      sonarr: credentialService.hasSonarrCredentials(),
      radarr: credentialService.hasRadarrCredentials(),
    );
  }
}

final enabledNotifierProvider = NotifierProvider<EnabledNotifier, Enabled>(
  EnabledNotifier.new,
);
