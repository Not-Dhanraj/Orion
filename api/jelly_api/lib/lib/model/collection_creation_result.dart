//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'collection_creation_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CollectionCreationResult {
  /// Returns a new [CollectionCreationResult] instance.
  CollectionCreationResult({

     this.id,
  });

  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CollectionCreationResult &&
      other.id == id;

    @override
    int get hashCode =>
        id.hashCode;

  factory CollectionCreationResult.fromJson(Map<String, dynamic> json) => _$CollectionCreationResultFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionCreationResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

