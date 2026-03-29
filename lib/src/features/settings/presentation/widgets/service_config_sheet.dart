import 'package:client/src/exceptions/repository_exception.dart';
import 'package:client/src/features/settings/presentation/widgets/settings_item_widgets.dart';
import 'package:client/src/shared/widgets/common/custom_text_field.dart';
import 'package:client/src/shared/widgets/custom_error_dialog.dart';
import 'package:flutter/material.dart';

class ServiceConfigSheet extends StatefulWidget {
  final String serviceName;
  final bool isRadarr;
  final String initialUrl;
  final String initialApiKey;
  final Future<void> Function(String url, String apiKey) onSave;

  const ServiceConfigSheet({
    super.key,
    required this.serviceName,
    required this.isRadarr,
    required this.initialUrl,
    required this.initialApiKey,
    required this.onSave,
  });

  @override
  State<ServiceConfigSheet> createState() => _ServiceConfigSheetState();
}

class _ServiceConfigSheetState extends State<ServiceConfigSheet> {
  late final TextEditingController _urlController;
  late final TextEditingController _apiController;
  final _formKey = GlobalKey<FormState>();
  bool _obscureApi = true;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _urlController = TextEditingController(text: widget.initialUrl);
    _apiController = TextEditingController(text: widget.initialApiKey);
  }

  @override
  void dispose() {
    _urlController.dispose();
    _apiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surfaceContainer,
          border: Border(
            top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.15)),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(24, 28, 24, 32),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                widget.isRadarr ? 'RADARR CONFIG' : 'SONARR CONFIG',
                style: tt.labelSmall!.copyWith(
                  fontSize: 9,
                  letterSpacing: 2.0,
                  color: cs.primary.withValues(alpha: 0.7),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Configure ${widget.serviceName}',
                style: tt.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              CustomTextField(
                controller: _urlController,
                hint: widget.isRadarr
                    ? 'http://192.168.1.x:7878'
                    : 'http://192.168.1.x:8989',
                enabled: !_isLoading,
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Please enter a server URL'
                    : null,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _apiController,
                hint: 'API Key',
                obscure: _obscureApi,
                enabled: !_isLoading,
                onToggle: () => setState(() => _obscureApi = !_obscureApi),
                validator: (v) => (v == null || v.trim().isEmpty)
                    ? 'Please enter an API key'
                    : null,
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  Expanded(
                    child: SheetButton(
                      label: 'CANCEL',
                      onTap: _isLoading ? null : () => Navigator.pop(context),
                      filled: false,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: SheetButton(
                      label: _isLoading ? 'Connecting…' : 'SAVE',
                      onTap: _isLoading ? null : _save,
                      filled: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _save() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    setState(() => _isLoading = true);

    try {
      await widget.onSave(
        _urlController.text.trim(),
        _apiController.text.trim(),
      );
      if (mounted) Navigator.of(context).pop();
    } on RepositoryException catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
      _showError(e.message);
    } catch (e) {
      if (!mounted) return;
      setState(() => _isLoading = false);
      _showError(e.toString());
    } finally {
      if (mounted && _isLoading) setState(() => _isLoading = false);
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      barrierColor: Colors.black54,
      builder: (_) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.all(24),
        child: CustomErrorDialog(
          title: 'CONNECTION FAILED',
          errorMessage: message,
        ),
      ),
    );
  }
}
