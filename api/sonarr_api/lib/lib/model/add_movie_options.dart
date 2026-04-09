//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:sonarr_api/lib/model/add_movie_method.dart';
import 'package:sonarr_api/lib/model/monitor_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_movie_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddMovieOptions {
  /// Returns a new [AddMovieOptions] instance.
  AddMovieOptions({

     this.ignoreEpisodesWithFiles,

     this.ignoreEpisodesWithoutFiles,

     this.monitor,

     this.searchForMovie,

     this.addMethod,
  });

  @JsonKey(
    
    name: r'ignoreEpisodesWithFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreEpisodesWithFiles;



  @JsonKey(
    
    name: r'ignoreEpisodesWithoutFiles',
    required: false,
    includeIfNull: false,
  )


  final bool? ignoreEpisodesWithoutFiles;



  @JsonKey(
    
    name: r'monitor',
    required: false,
    includeIfNull: false,
  )


  final MonitorTypes? monitor;



  @JsonKey(
    
    name: r'searchForMovie',
    required: false,
    includeIfNull: false,
  )


  final bool? searchForMovie;



  @JsonKey(
    
    name: r'addMethod',
    required: false,
    includeIfNull: false,
  )


  final AddMovieMethod? addMethod;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddMovieOptions &&
      other.ignoreEpisodesWithFiles == ignoreEpisodesWithFiles &&
      other.ignoreEpisodesWithoutFiles == ignoreEpisodesWithoutFiles &&
      other.monitor == monitor &&
      other.searchForMovie == searchForMovie &&
      other.addMethod == addMethod;

    @override
    int get hashCode =>
        ignoreEpisodesWithFiles.hashCode +
        ignoreEpisodesWithoutFiles.hashCode +
        monitor.hashCode +
        searchForMovie.hashCode +
        addMethod.hashCode;

  factory AddMovieOptions.fromJson(Map<String, dynamic> json) => _$AddMovieOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$AddMovieOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

