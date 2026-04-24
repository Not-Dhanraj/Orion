// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_configuration_options.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DatabaseConfigurationOptionsCWProxy {
  DatabaseConfigurationOptions databaseType(String? databaseType);

  DatabaseConfigurationOptions customProviderOptions(
    CustomDatabaseOptions? customProviderOptions,
  );

  DatabaseConfigurationOptions lockingBehavior(
    DatabaseLockingBehaviorTypes? lockingBehavior,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DatabaseConfigurationOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DatabaseConfigurationOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  DatabaseConfigurationOptions call({
    String? databaseType,
    CustomDatabaseOptions? customProviderOptions,
    DatabaseLockingBehaviorTypes? lockingBehavior,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDatabaseConfigurationOptions.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDatabaseConfigurationOptions.copyWith.fieldName(...)`
class _$DatabaseConfigurationOptionsCWProxyImpl
    implements _$DatabaseConfigurationOptionsCWProxy {
  const _$DatabaseConfigurationOptionsCWProxyImpl(this._value);

  final DatabaseConfigurationOptions _value;

  @override
  DatabaseConfigurationOptions databaseType(String? databaseType) =>
      this(databaseType: databaseType);

  @override
  DatabaseConfigurationOptions customProviderOptions(
    CustomDatabaseOptions? customProviderOptions,
  ) => this(customProviderOptions: customProviderOptions);

  @override
  DatabaseConfigurationOptions lockingBehavior(
    DatabaseLockingBehaviorTypes? lockingBehavior,
  ) => this(lockingBehavior: lockingBehavior);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DatabaseConfigurationOptions(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DatabaseConfigurationOptions(...).copyWith(id: 12, name: "My name")
  /// ````
  DatabaseConfigurationOptions call({
    Object? databaseType = const $CopyWithPlaceholder(),
    Object? customProviderOptions = const $CopyWithPlaceholder(),
    Object? lockingBehavior = const $CopyWithPlaceholder(),
  }) {
    return DatabaseConfigurationOptions(
      databaseType: databaseType == const $CopyWithPlaceholder()
          ? _value.databaseType
          // ignore: cast_nullable_to_non_nullable
          : databaseType as String?,
      customProviderOptions:
          customProviderOptions == const $CopyWithPlaceholder()
          ? _value.customProviderOptions
          // ignore: cast_nullable_to_non_nullable
          : customProviderOptions as CustomDatabaseOptions?,
      lockingBehavior: lockingBehavior == const $CopyWithPlaceholder()
          ? _value.lockingBehavior
          // ignore: cast_nullable_to_non_nullable
          : lockingBehavior as DatabaseLockingBehaviorTypes?,
    );
  }
}

extension $DatabaseConfigurationOptionsCopyWith
    on DatabaseConfigurationOptions {
  /// Returns a callable class that can be used as follows: `instanceOfDatabaseConfigurationOptions.copyWith(...)` or like so:`instanceOfDatabaseConfigurationOptions.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DatabaseConfigurationOptionsCWProxy get copyWith =>
      _$DatabaseConfigurationOptionsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatabaseConfigurationOptions _$DatabaseConfigurationOptionsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'DatabaseConfigurationOptions',
  json,
  ($checkedConvert) {
    final val = DatabaseConfigurationOptions(
      databaseType: $checkedConvert('DatabaseType', (v) => v as String?),
      customProviderOptions: $checkedConvert(
        'CustomProviderOptions',
        (v) => v == null
            ? null
            : CustomDatabaseOptions.fromJson(v as Map<String, dynamic>),
      ),
      lockingBehavior: $checkedConvert(
        'LockingBehavior',
        (v) => $enumDecodeNullable(_$DatabaseLockingBehaviorTypesEnumMap, v),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'databaseType': 'DatabaseType',
    'customProviderOptions': 'CustomProviderOptions',
    'lockingBehavior': 'LockingBehavior',
  },
);

Map<String, dynamic> _$DatabaseConfigurationOptionsToJson(
  DatabaseConfigurationOptions instance,
) => <String, dynamic>{
  'DatabaseType': ?instance.databaseType,
  'CustomProviderOptions': ?instance.customProviderOptions?.toJson(),
  'LockingBehavior':
      ?_$DatabaseLockingBehaviorTypesEnumMap[instance.lockingBehavior],
};

const _$DatabaseLockingBehaviorTypesEnumMap = {
  DatabaseLockingBehaviorTypes.noLock: 'NoLock',
  DatabaseLockingBehaviorTypes.pessimistic: 'Pessimistic',
  DatabaseLockingBehaviorTypes.optimistic: 'Optimistic',
};
