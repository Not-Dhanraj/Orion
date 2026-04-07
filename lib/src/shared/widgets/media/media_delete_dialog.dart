import 'package:client/src/shared/widgets/dialogs/custom_dialog.dart';
import 'package:flutter/material.dart';

class MediaDeleteDialog extends StatefulWidget {
  final String title;
  final String heading;
  final void Function({
    required bool deleteFiles,
    required bool addImportListExclusion,
  }) onConfirm;

  const MediaDeleteDialog({
    super.key,
    required this.title,
    required this.heading,
    required this.onConfirm,
  });

  @override
  State<MediaDeleteDialog> createState() => _MediaDeleteDialogState();
}

class _MediaDeleteDialogState extends State<MediaDeleteDialog> {
  bool _deleteFiles = false;
  bool _addImportListExclusion = false;

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 600),
        child: CustomDialog(
          title: widget.title,
          heading: widget.heading,
          bodyWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Are you sure you want to delete this ${widget.title.toLowerCase()}?'),
              const SizedBox(height: 12),
              CheckboxListTile(
                title: const Text('Delete Files'),
                value: _deleteFiles,
                onChanged: (v) => setState(() => _deleteFiles = v ?? false),
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
              CheckboxListTile(
                title: const Text('Add Import List Exclusion'),
                value: _addImportListExclusion,
                onChanged: (v) =>
                    setState(() => _addImportListExclusion = v ?? false),
                contentPadding: EdgeInsets.zero,
                dense: true,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pop();
                widget.onConfirm(
                  deleteFiles: _deleteFiles,
                  addImportListExclusion: _addImportListExclusion,
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: cs.error,
                side: BorderSide(color: cs.error.withValues(alpha: 0.4)),
              ),
              child: const Text('DELETE'),
            ),
          ],
        ),
      ),
    );
  }
}
