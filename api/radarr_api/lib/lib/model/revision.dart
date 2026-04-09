//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'revision.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Revision {
  /// Returns a new [Revision] instance.
  Revision({

     this.version,

     this.real,

     this.isRepack,
  });

  @JsonKey(
    
    name: r'version',
    required: false,
    includeIfNull: false,
  )


  final int? version;



  @JsonKey(
    
    name: r'real',
    required: false,
    includeIfNull: false,
  )


  final int? real;



  @JsonKey(
    
    name: r'isRepack',
    required: false,
    includeIfNull: false,
  )


  final bool? isRepack;





    @override
    bool operator ==(Object other) => identical(this, other) || other is Revision &&
      other.version == version &&
      other.real == real &&
      other.isRepack == isRepack;

    @override
    int get hashCode =>
        version.hashCode +
        real.hashCode +
        isRepack.hashCode;

  factory Revision.fromJson(Map<String, dynamic> json) => _$RevisionFromJson(json);

  Map<String, dynamic> toJson() => _$RevisionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

