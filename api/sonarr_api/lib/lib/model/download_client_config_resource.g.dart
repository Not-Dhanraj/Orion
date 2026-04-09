// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'download_client_config_resource.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DownloadClientConfigResourceCWProxy {
  DownloadClientConfigResource id(int? id);

  DownloadClientConfigResource downloadClientWorkingFolders(
    String? downloadClientWorkingFolders,
  );

  DownloadClientConfigResource enableCompletedDownloadHandling(
    bool? enableCompletedDownloadHandling,
  );

  DownloadClientConfigResource autoRedownloadFailed(bool? autoRedownloadFailed);

  DownloadClientConfigResource autoRedownloadFailedFromInteractiveSearch(
    bool? autoRedownloadFailedFromInteractiveSearch,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DownloadClientConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DownloadClientConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DownloadClientConfigResource call({
    int? id,
    String? downloadClientWorkingFolders,
    bool? enableCompletedDownloadHandling,
    bool? autoRedownloadFailed,
    bool? autoRedownloadFailedFromInteractiveSearch,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDownloadClientConfigResource.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDownloadClientConfigResource.copyWith.fieldName(...)`
class _$DownloadClientConfigResourceCWProxyImpl
    implements _$DownloadClientConfigResourceCWProxy {
  const _$DownloadClientConfigResourceCWProxyImpl(this._value);

  final DownloadClientConfigResource _value;

  @override
  DownloadClientConfigResource id(int? id) => this(id: id);

  @override
  DownloadClientConfigResource downloadClientWorkingFolders(
    String? downloadClientWorkingFolders,
  ) => this(downloadClientWorkingFolders: downloadClientWorkingFolders);

  @override
  DownloadClientConfigResource enableCompletedDownloadHandling(
    bool? enableCompletedDownloadHandling,
  ) => this(enableCompletedDownloadHandling: enableCompletedDownloadHandling);

  @override
  DownloadClientConfigResource autoRedownloadFailed(
    bool? autoRedownloadFailed,
  ) => this(autoRedownloadFailed: autoRedownloadFailed);

  @override
  DownloadClientConfigResource autoRedownloadFailedFromInteractiveSearch(
    bool? autoRedownloadFailedFromInteractiveSearch,
  ) => this(
    autoRedownloadFailedFromInteractiveSearch:
        autoRedownloadFailedFromInteractiveSearch,
  );

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DownloadClientConfigResource(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DownloadClientConfigResource(...).copyWith(id: 12, name: "My name")
  /// ````
  DownloadClientConfigResource call({
    Object? id = const $CopyWithPlaceholder(),
    Object? downloadClientWorkingFolders = const $CopyWithPlaceholder(),
    Object? enableCompletedDownloadHandling = const $CopyWithPlaceholder(),
    Object? autoRedownloadFailed = const $CopyWithPlaceholder(),
    Object? autoRedownloadFailedFromInteractiveSearch =
        const $CopyWithPlaceholder(),
  }) {
    return DownloadClientConfigResource(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int?,
      downloadClientWorkingFolders:
          downloadClientWorkingFolders == const $CopyWithPlaceholder()
          ? _value.downloadClientWorkingFolders
          // ignore: cast_nullable_to_non_nullable
          : downloadClientWorkingFolders as String?,
      enableCompletedDownloadHandling:
          enableCompletedDownloadHandling == const $CopyWithPlaceholder()
          ? _value.enableCompletedDownloadHandling
          // ignore: cast_nullable_to_non_nullable
          : enableCompletedDownloadHandling as bool?,
      autoRedownloadFailed: autoRedownloadFailed == const $CopyWithPlaceholder()
          ? _value.autoRedownloadFailed
          // ignore: cast_nullable_to_non_nullable
          : autoRedownloadFailed as bool?,
      autoRedownloadFailedFromInteractiveSearch:
          autoRedownloadFailedFromInteractiveSearch ==
              const $CopyWithPlaceholder()
          ? _value.autoRedownloadFailedFromInteractiveSearch
          // ignore: cast_nullable_to_non_nullable
          : autoRedownloadFailedFromInteractiveSearch as bool?,
    );
  }
}

extension $DownloadClientConfigResourceCopyWith
    on DownloadClientConfigResource {
  /// Returns a callable class that can be used as follows: `instanceOfDownloadClientConfigResource.copyWith(...)` or like so:`instanceOfDownloadClientConfigResource.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DownloadClientConfigResourceCWProxy get copyWith =>
      _$DownloadClientConfigResourceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadClientConfigResource _$DownloadClientConfigResourceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DownloadClientConfigResource', json, ($checkedConvert) {
  final val = DownloadClientConfigResource(
    id: $checkedConvert('id', (v) => (v as num?)?.toInt()),
    downloadClientWorkingFolders: $checkedConvert(
      'downloadClientWorkingFolders',
      (v) => v as String?,
    ),
    enableCompletedDownloadHandling: $checkedConvert(
      'enableCompletedDownloadHandling',
      (v) => v as bool?,
    ),
    autoRedownloadFailed: $checkedConvert(
      'autoRedownloadFailed',
      (v) => v as bool?,
    ),
    autoRedownloadFailedFromInteractiveSearch: $checkedConvert(
      'autoRedownloadFailedFromInteractiveSearch',
      (v) => v as bool?,
    ),
  );
  return val;
});

Map<String, dynamic> _$DownloadClientConfigResourceToJson(
  DownloadClientConfigResource instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'downloadClientWorkingFolders': ?instance.downloadClientWorkingFolders,
  'enableCompletedDownloadHandling': ?instance.enableCompletedDownloadHandling,
  'autoRedownloadFailed': ?instance.autoRedownloadFailed,
  'autoRedownloadFailedFromInteractiveSearch':
      ?instance.autoRedownloadFailedFromInteractiveSearch,
};
