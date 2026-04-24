//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/lyric_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'remote_lyric_info_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RemoteLyricInfoDto {
  /// Returns a new [RemoteLyricInfoDto] instance.
  RemoteLyricInfoDto({

     this.id,

     this.providerName,

     this.lyrics,
  });

      /// Gets or sets the id for the lyric.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets the provider name.
  @JsonKey(
    
    name: r'ProviderName',
    required: false,
    includeIfNull: false,
  )


  final String? providerName;



      /// Gets the lyrics.
  @JsonKey(
    
    name: r'Lyrics',
    required: false,
    includeIfNull: false,
  )


  final LyricDto? lyrics;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RemoteLyricInfoDto &&
      other.id == id &&
      other.providerName == providerName &&
      other.lyrics == lyrics;

    @override
    int get hashCode =>
        id.hashCode +
        providerName.hashCode +
        lyrics.hashCode;

  factory RemoteLyricInfoDto.fromJson(Map<String, dynamic> json) => _$RemoteLyricInfoDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RemoteLyricInfoDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

