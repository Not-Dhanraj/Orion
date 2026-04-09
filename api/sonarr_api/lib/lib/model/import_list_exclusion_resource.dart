//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'import_list_exclusion_resource.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ImportListExclusionResource {
  /// Returns a new [ImportListExclusionResource] instance.
  ImportListExclusionResource({

     this.id,

     this.tvdbId,

     this.title,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final int? id;



  @JsonKey(
    
    name: r'tvdbId',
    required: false,
    includeIfNull: false,
  )


  final int? tvdbId;



  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
  )


  final String? title;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ImportListExclusionResource &&
      other.id == id &&
      other.tvdbId == tvdbId &&
      other.title == title;

    @override
    int get hashCode =>
        id.hashCode +
        tvdbId.hashCode +
        (title == null ? 0 : title.hashCode);

  factory ImportListExclusionResource.fromJson(Map<String, dynamic> json) => _$ImportListExclusionResourceFromJson(json);

  Map<String, dynamic> toJson() => _$ImportListExclusionResourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

