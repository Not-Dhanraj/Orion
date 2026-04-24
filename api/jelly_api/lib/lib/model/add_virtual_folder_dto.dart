//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/library_options.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_virtual_folder_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddVirtualFolderDto {
  /// Returns a new [AddVirtualFolderDto] instance.
  AddVirtualFolderDto({

     this.libraryOptions,
  });

      /// Gets or sets library options.
  @JsonKey(
    
    name: r'LibraryOptions',
    required: false,
    includeIfNull: false,
  )


  final LibraryOptions? libraryOptions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddVirtualFolderDto &&
      other.libraryOptions == libraryOptions;

    @override
    int get hashCode =>
        (libraryOptions == null ? 0 : libraryOptions.hashCode);

  factory AddVirtualFolderDto.fromJson(Map<String, dynamic> json) => _$AddVirtualFolderDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AddVirtualFolderDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

