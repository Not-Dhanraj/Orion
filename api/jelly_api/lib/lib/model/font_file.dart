//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'font_file.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FontFile {
  /// Returns a new [FontFile] instance.
  FontFile({

     this.name,

     this.size,

     this.dateCreated,

     this.dateModified,
  });

      /// Gets or sets the name.
  @JsonKey(
    
    name: r'Name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



      /// Gets or sets the size.
  @JsonKey(
    
    name: r'Size',
    required: false,
    includeIfNull: false,
  )


  final int? size;



      /// Gets or sets the date created.
  @JsonKey(
    
    name: r'DateCreated',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateCreated;



      /// Gets or sets the date modified.
  @JsonKey(
    
    name: r'DateModified',
    required: false,
    includeIfNull: false,
  )


  final DateTime? dateModified;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FontFile &&
      other.name == name &&
      other.size == size &&
      other.dateCreated == dateCreated &&
      other.dateModified == dateModified;

    @override
    int get hashCode =>
        (name == null ? 0 : name.hashCode) +
        size.hashCode +
        dateCreated.hashCode +
        dateModified.hashCode;

  factory FontFile.fromJson(Map<String, dynamic> json) => _$FontFileFromJson(json);

  Map<String, dynamic> toJson() => _$FontFileToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

