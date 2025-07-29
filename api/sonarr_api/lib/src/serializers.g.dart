// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (Serializers().toBuilder()
      ..add(AddSeriesOptions.serializer)
      ..add(AlternateTitleResource.serializer)
      ..add(ApplyTags.serializer)
      ..add(AuthenticationRequiredType.serializer)
      ..add(AuthenticationType.serializer)
      ..add(AutoTaggingResource.serializer)
      ..add(AutoTaggingSpecificationSchema.serializer)
      ..add(BackupResource.serializer)
      ..add(BackupType.serializer)
      ..add(BlocklistBulkResource.serializer)
      ..add(BlocklistResource.serializer)
      ..add(BlocklistResourcePagingResource.serializer)
      ..add(CertificateValidationType.serializer)
      ..add(Command.serializer)
      ..add(CommandPriority.serializer)
      ..add(CommandResource.serializer)
      ..add(CommandResult.serializer)
      ..add(CommandStatus.serializer)
      ..add(CommandTrigger.serializer)
      ..add(CustomFilterResource.serializer)
      ..add(CustomFormatBulkResource.serializer)
      ..add(CustomFormatResource.serializer)
      ..add(CustomFormatSpecificationSchema.serializer)
      ..add(DatabaseType.serializer)
      ..add(DelayProfileResource.serializer)
      ..add(DiskSpaceResource.serializer)
      ..add(DownloadClientBulkResource.serializer)
      ..add(DownloadClientConfigResource.serializer)
      ..add(DownloadClientResource.serializer)
      ..add(DownloadProtocol.serializer)
      ..add(EpisodeFileListResource.serializer)
      ..add(EpisodeFileResource.serializer)
      ..add(EpisodeHistoryEventType.serializer)
      ..add(EpisodeResource.serializer)
      ..add(EpisodeResourcePagingResource.serializer)
      ..add(EpisodeTitleRequiredType.serializer)
      ..add(EpisodesMonitoredResource.serializer)
      ..add(Field.serializer)
      ..add(FileDateType.serializer)
      ..add(HealthCheckResult.serializer)
      ..add(HealthResource.serializer)
      ..add(HistoryResource.serializer)
      ..add(HistoryResourcePagingResource.serializer)
      ..add(HostConfigResource.serializer)
      ..add(HttpUri.serializer)
      ..add(ImportListBulkResource.serializer)
      ..add(ImportListConfigResource.serializer)
      ..add(ImportListExclusionBulkResource.serializer)
      ..add(ImportListExclusionResource.serializer)
      ..add(ImportListExclusionResourcePagingResource.serializer)
      ..add(ImportListResource.serializer)
      ..add(ImportListType.serializer)
      ..add(ImportRejectionResource.serializer)
      ..add(IndexerBulkResource.serializer)
      ..add(IndexerConfigResource.serializer)
      ..add(IndexerFlagResource.serializer)
      ..add(IndexerResource.serializer)
      ..add(Language.serializer)
      ..add(LanguageProfileItemResource.serializer)
      ..add(LanguageProfileResource.serializer)
      ..add(LanguageResource.serializer)
      ..add(ListSyncLevelType.serializer)
      ..add(LocalizationLanguageResource.serializer)
      ..add(LocalizationResource.serializer)
      ..add(LogFileResource.serializer)
      ..add(LogResource.serializer)
      ..add(LogResourcePagingResource.serializer)
      ..add(ManualImportReprocessResource.serializer)
      ..add(ManualImportResource.serializer)
      ..add(MediaCover.serializer)
      ..add(MediaCoverTypes.serializer)
      ..add(MediaInfoResource.serializer)
      ..add(MediaManagementConfigResource.serializer)
      ..add(MetadataResource.serializer)
      ..add(MonitorTypes.serializer)
      ..add(MonitoringOptions.serializer)
      ..add(NamingConfigResource.serializer)
      ..add(NewItemMonitorTypes.serializer)
      ..add(NotificationResource.serializer)
      ..add(ParseResource.serializer)
      ..add(ParsedEpisodeInfo.serializer)
      ..add(PingResource.serializer)
      ..add(PrivacyLevel.serializer)
      ..add(ProfileFormatItemResource.serializer)
      ..add(ProperDownloadTypes.serializer)
      ..add(ProviderMessage.serializer)
      ..add(ProviderMessageType.serializer)
      ..add(ProxyType.serializer)
      ..add(Quality.serializer)
      ..add(QualityDefinitionLimitsResource.serializer)
      ..add(QualityDefinitionResource.serializer)
      ..add(QualityModel.serializer)
      ..add(QualityProfileQualityItemResource.serializer)
      ..add(QualityProfileResource.serializer)
      ..add(QualitySource.serializer)
      ..add(QueueBulkResource.serializer)
      ..add(QueueResource.serializer)
      ..add(QueueResourcePagingResource.serializer)
      ..add(QueueStatus.serializer)
      ..add(QueueStatusResource.serializer)
      ..add(Ratings.serializer)
      ..add(RejectionType.serializer)
      ..add(ReleaseEpisodeResource.serializer)
      ..add(ReleaseProfileResource.serializer)
      ..add(ReleaseResource.serializer)
      ..add(ReleaseType.serializer)
      ..add(RemotePathMappingResource.serializer)
      ..add(RenameEpisodeResource.serializer)
      ..add(RescanAfterRefreshType.serializer)
      ..add(Revision.serializer)
      ..add(RootFolderResource.serializer)
      ..add(RuntimeMode.serializer)
      ..add(SeasonPassResource.serializer)
      ..add(SeasonPassSeriesResource.serializer)
      ..add(SeasonResource.serializer)
      ..add(SeasonStatisticsResource.serializer)
      ..add(SelectOption.serializer)
      ..add(SeriesEditorResource.serializer)
      ..add(SeriesResource.serializer)
      ..add(SeriesStatisticsResource.serializer)
      ..add(SeriesStatusType.serializer)
      ..add(SeriesTitleInfo.serializer)
      ..add(SeriesTypes.serializer)
      ..add(SortDirection.serializer)
      ..add(SystemResource.serializer)
      ..add(TagDetailsResource.serializer)
      ..add(TagResource.serializer)
      ..add(TaskResource.serializer)
      ..add(TrackedDownloadState.serializer)
      ..add(TrackedDownloadStatus.serializer)
      ..add(TrackedDownloadStatusMessage.serializer)
      ..add(UiConfigResource.serializer)
      ..add(UnmappedFolder.serializer)
      ..add(UpdateChanges.serializer)
      ..add(UpdateMechanism.serializer)
      ..add(UpdateResource.serializer)
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(AlternateTitleResource)]),
          () => ListBuilder<AlternateTitleResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaCover)]),
          () => ListBuilder<MediaCover>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SeasonResource)]),
          () => ListBuilder<SeasonResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(BlocklistResource)]),
          () => ListBuilder<BlocklistResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType(BuiltMap, const [
              const FullType(String),
              const FullType.nullable(JsonObject)
            ])
          ]),
          () => ListBuilder<BuiltMap<String, JsonObject?>>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(CustomFormatSpecificationSchema)]),
          () => ListBuilder<CustomFormatSpecificationSchema>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EpisodeResource)]),
          () => ListBuilder<EpisodeResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EpisodeResource)]),
          () => ListBuilder<EpisodeResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EpisodeResource)]),
          () => ListBuilder<EpisodeResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ImportRejectionResource)]),
          () => ListBuilder<ImportRejectionResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(EpisodeResource)]),
          () => ListBuilder<EpisodeResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ImportRejectionResource)]),
          () => ListBuilder<ImportRejectionResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(CustomFormatSpecificationSchema)]),
          () => ListBuilder<CustomFormatSpecificationSchema>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(DownloadClientResource)]),
          () => ListBuilder<DownloadClientResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ImportListResource)]),
          () => ListBuilder<ImportListResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(IndexerResource)]),
          () => ListBuilder<IndexerResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MetadataResource)]),
          () => ListBuilder<MetadataResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Field)]),
          () => ListBuilder<Field>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(NotificationResource)]),
          () => ListBuilder<NotificationResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(HistoryResource)]),
          () => ListBuilder<HistoryResource>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ImportListExclusionResource)]),
          () => ListBuilder<ImportListExclusionResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(TrackedDownloadStatusMessage)]),
          () => ListBuilder<TrackedDownloadStatusMessage>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType.nullable(String)]),
          () => MapBuilder<String, String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ReleaseEpisodeResource)]),
          () => ListBuilder<ReleaseEpisodeResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(LanguageProfileItemResource)]),
          () => ListBuilder<LanguageProfileItemResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(LogResource)]),
          () => ListBuilder<LogResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaCover)]),
          () => ListBuilder<MediaCover>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MediaCover)]),
          () => ListBuilder<MediaCover>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(QualityProfileQualityItemResource)]),
          () => ListBuilder<QualityProfileQualityItemResource>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(QualityProfileQualityItemResource)]),
          () => ListBuilder<QualityProfileQualityItemResource>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(ProfileFormatItemResource)]),
          () => ListBuilder<ProfileFormatItemResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(QueueResource)]),
          () => ListBuilder<QueueResource>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(SeasonPassSeriesResource)]),
          () => ListBuilder<SeasonPassSeriesResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SeasonResource)]),
          () => ListBuilder<SeasonResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(SelectOption)]),
          () => ListBuilder<SelectOption>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UnmappedFolder)]),
          () => ListBuilder<UnmappedFolder>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType(CustomFormatResource)]),
          () => ListBuilder<CustomFormatResource>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(double)]),
          () => ListBuilder<double>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Language)]),
          () => ListBuilder<Language>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(int)]),
          () => ListBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType.nullable(String)]),
          () => MapBuilder<String, String?>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(const FullType(BuiltSet, const [const FullType(int)]),
          () => SetBuilder<int>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType(AutoTaggingSpecificationSchema)]),
          () => ListBuilder<AutoTaggingSpecificationSchema>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
