import 'package:client/core/api/api_client.dart';
import 'package:client/features/sonarr/data/commands_provider/commands_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// A button that triggers a refresh of all series in Sonarr
class RefreshCalendarButton extends ConsumerStatefulWidget {
  const RefreshCalendarButton({super.key});

  @override
  ConsumerState<RefreshCalendarButton> createState() => _RefreshCalendarButtonState();
}

class _RefreshCalendarButtonState extends ConsumerState<RefreshCalendarButton> {
  bool _isRefreshing = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: _isRefreshing
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
          : const Icon(Icons.refresh),
      tooltip: 'Refresh all series',
      onPressed: _isRefreshing
          ? null
          : () async {
              setState(() {
                _isRefreshing = true;
              });

              try {
                // Get list of all series
                final sonarrApi = ref.read(sonarrProvider);
                final series = await sonarrApi.series.getAllSeries();
                final commands = ref.read(sonarrCommandsProvider);
                
                // Refresh each series in sequence to avoid overwhelming the API
                for (final s in series) {
                  if (!mounted) return;
                  if (s.id == null) continue;
                  
                  await commands.refreshSeries(s.id!);
                }
                
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Refreshing all series'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error refreshing series: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              } finally {
                if (mounted) {
                  setState(() {
                    _isRefreshing = false;
                  });
                }
              }
            },
    );
  }
}
