// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata_configuration.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MetadataConfigurationCWProxy {
  MetadataConfiguration useFileCreationTimeForDateAdded(
    bool? useFileCreationTimeForDateAdded,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataConfiguration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataConfiguration(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataConfiguration call({bool? useFileCreationTimeForDateAdded});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMetadataConfiguration.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMetadataConfiguration.copyWith.fieldName(...)`
class _$MetadataConfigurationCWProxyImpl
    implements _$MetadataConfigurationCWProxy {
  const _$MetadataConfigurationCWProxyImpl(this._value);

  final MetadataConfiguration _value;

  @override
  MetadataConfiguration useFileCreationTimeForDateAdded(
    bool? useFileCreationTimeForDateAdded,
  ) => this(useFileCreationTimeForDateAdded: useFileCreationTimeForDateAdded);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MetadataConfiguration(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MetadataConfiguration(...).copyWith(id: 12, name: "My name")
  /// ````
  MetadataConfiguration call({
    Object? useFileCreationTimeForDateAdded = const $CopyWithPlaceholder(),
  }) {
    return MetadataConfiguration(
      useFileCreationTimeForDateAdded:
          useFileCreationTimeForDateAdded == const $CopyWithPlaceholder()
          ? _value.useFileCreationTimeForDateAdded
          // ignore: cast_nullable_to_non_nullable
          : useFileCreationTimeForDateAdded as bool?,
    );
  }
}

extension $MetadataConfigurationCopyWith on MetadataConfiguration {
  /// Returns a callable class that can be used as follows: `instanceOfMetadataConfiguration.copyWith(...)` or like so:`instanceOfMetadataConfiguration.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetadataConfigurationCWProxy get copyWith =>
      _$MetadataConfigurationCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetadataConfiguration _$MetadataConfigurationFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'MetadataConfiguration',
  json,
  ($checkedConvert) {
    final val = MetadataConfiguration(
      useFileCreationTimeForDateAdded: $checkedConvert(
        'UseFileCreationTimeForDateAdded',
        (v) => v as bool?,
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'useFileCreationTimeForDateAdded': 'UseFileCreationTimeForDateAdded',
  },
);

Map<String, dynamic> _$MetadataConfigurationToJson(
  MetadataConfiguration instance,
) => <String, dynamic>{
  'UseFileCreationTimeForDateAdded': ?instance.useFileCreationTimeForDateAdded,
};
