//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/library_options.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_library_options_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateLibraryOptionsDto {
  /// Returns a new [UpdateLibraryOptionsDto] instance.
  UpdateLibraryOptionsDto({

     this.id,

     this.libraryOptions,
  });

      /// Gets or sets the library item id.
  @JsonKey(
    
    name: r'Id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



      /// Gets or sets library options.
  @JsonKey(
    
    name: r'LibraryOptions',
    required: false,
    includeIfNull: false,
  )


  final LibraryOptions? libraryOptions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateLibraryOptionsDto &&
      other.id == id &&
      other.libraryOptions == libraryOptions;

    @override
    int get hashCode =>
        id.hashCode +
        (libraryOptions == null ? 0 : libraryOptions.hashCode);

  factory UpdateLibraryOptionsDto.fromJson(Map<String, dynamic> json) => _$UpdateLibraryOptionsDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateLibraryOptionsDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

