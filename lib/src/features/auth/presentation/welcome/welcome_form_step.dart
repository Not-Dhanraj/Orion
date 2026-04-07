import 'package:client/src/features/auth/application/auth_service.dart';
import 'package:client/src/shared/widgets/inputs/custom_text_field.dart';
import 'package:flutter/material.dart';

class WelcomeFormStep extends StatefulWidget {
  final ServiceType serviceType;
  final TextEditingController urlController;
  final TextEditingController apiKeyController;
  final bool isLoading;
  final VoidCallback onConnect;
  final VoidCallback onBack;

  const WelcomeFormStep({
    super.key,
    required this.serviceType,
    required this.urlController,
    required this.apiKeyController,
    required this.isLoading,
    required this.onConnect,
    required this.onBack,
  });

  @override
  State<WelcomeFormStep> createState() => _WelcomeFormStepState();
}

class _WelcomeFormStepState extends State<WelcomeFormStep> {
  bool _obscureApiKey = true;

  @override
  Widget build(BuildContext context) {
    final tt = Theme.of(context).textTheme;
    final cs = Theme.of(context).colorScheme;
    final isDesktop = MediaQuery.of(context).size.width >= 768;

    final serviceName = widget.serviceType == ServiceType.sonarr
        ? 'SONARR'
        : 'RADARR';

    return SafeArea(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 600),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: isDesktop ? 0 : 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                OutlinedButton.icon(
                  onPressed: widget.isLoading ? null : widget.onBack,
                  icon: const Icon(Icons.arrow_back, size: 16),
                  label: const Text('BACK TO DIAGNOSTICS'),
                ),
                const SizedBox(height: 24),
                Text(
                  '$serviceName\nCONFIGURATION',
                  style: tt.displaySmall!.copyWith(
                    letterSpacing: -1.0,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'LINKING_TO_SERVICE // ${widget.serviceType.name.toUpperCase()}_INSTANCE',
                  style: tt.labelSmall!.copyWith(
                    color: cs.outline,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'SERVER URL',
                  style: tt.labelSmall!.copyWith(
                    color: cs.outline,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: widget.urlController,
                  hint: 'http://your-server:port',
                  enabled: !widget.isLoading,
                ),
                const SizedBox(height: 24),
                Text(
                  'API KEY',
                  style: tt.labelSmall!.copyWith(
                    color: cs.outline,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 8),
                CustomTextField(
                  controller: widget.apiKeyController,
                  hint: 'Paste your API key',
                  obscure: _obscureApiKey,
                  enabled: !widget.isLoading,
                  onToggle: () =>
                      setState(() => _obscureApiKey = !_obscureApiKey),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 54,
                  child: ElevatedButton(
                    onPressed: widget.isLoading ? null : widget.onConnect,
                    child: widget.isLoading
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: cs.onPrimary,
                                ),
                              ),
                              const SizedBox(width: 12),
                              const Text('VALIDATING...'),
                            ],
                          )
                        : const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.link),
                              SizedBox(width: 12),
                              Text('ESTABLISH CONNECTION'),
                            ],
                          ),
                  ),
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
