//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jelly_api/lib/model/process_priority_class.dart';
import 'package:jelly_api/lib/model/trickplay_scan_behavior.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'trickplay_options.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TrickplayOptions {
  /// Returns a new [TrickplayOptions] instance.
  TrickplayOptions({

     this.enableHwAcceleration,

     this.enableHwEncoding,

     this.enableKeyFrameOnlyExtraction,

     this.scanBehavior,

     this.processPriority,

     this.interval,

     this.widthResolutions,

     this.tileWidth,

     this.tileHeight,

     this.qscale,

     this.jpegQuality,

     this.processThreads,
  });

      /// Gets or sets a value indicating whether or not to use HW acceleration.
  @JsonKey(
    
    name: r'EnableHwAcceleration',
    required: false,
    includeIfNull: false,
  )


  final bool? enableHwAcceleration;



      /// Gets or sets a value indicating whether or not to use HW accelerated MJPEG encoding.
  @JsonKey(
    
    name: r'EnableHwEncoding',
    required: false,
    includeIfNull: false,
  )


  final bool? enableHwEncoding;



      /// Gets or sets a value indicating whether to only extract key frames.  Significantly faster, but is not compatible with all decoders and/or video files.
  @JsonKey(
    
    name: r'EnableKeyFrameOnlyExtraction',
    required: false,
    includeIfNull: false,
  )


  final bool? enableKeyFrameOnlyExtraction;



      /// Gets or sets the behavior used by trickplay provider on library scan/update.
  @JsonKey(
    
    name: r'ScanBehavior',
    required: false,
    includeIfNull: false,
  )


  final TrickplayScanBehavior? scanBehavior;



      /// Gets or sets the process priority for the ffmpeg process.
  @JsonKey(
    
    name: r'ProcessPriority',
    required: false,
    includeIfNull: false,
  )


  final ProcessPriorityClass? processPriority;



      /// Gets or sets the interval, in ms, between each new trickplay image.
  @JsonKey(
    
    name: r'Interval',
    required: false,
    includeIfNull: false,
  )


  final int? interval;



      /// Gets or sets the target width resolutions, in px, to generates preview images for.
  @JsonKey(
    
    name: r'WidthResolutions',
    required: false,
    includeIfNull: false,
  )


  final List<int>? widthResolutions;



      /// Gets or sets number of tile images to allow in X dimension.
  @JsonKey(
    
    name: r'TileWidth',
    required: false,
    includeIfNull: false,
  )


  final int? tileWidth;



      /// Gets or sets number of tile images to allow in Y dimension.
  @JsonKey(
    
    name: r'TileHeight',
    required: false,
    includeIfNull: false,
  )


  final int? tileHeight;



      /// Gets or sets the ffmpeg output quality level.
  @JsonKey(
    
    name: r'Qscale',
    required: false,
    includeIfNull: false,
  )


  final int? qscale;



      /// Gets or sets the jpeg quality to use for image tiles.
  @JsonKey(
    
    name: r'JpegQuality',
    required: false,
    includeIfNull: false,
  )


  final int? jpegQuality;



      /// Gets or sets the number of threads to be used by ffmpeg.
  @JsonKey(
    
    name: r'ProcessThreads',
    required: false,
    includeIfNull: false,
  )


  final int? processThreads;





    @override
    bool operator ==(Object other) => identical(this, other) || other is TrickplayOptions &&
      other.enableHwAcceleration == enableHwAcceleration &&
      other.enableHwEncoding == enableHwEncoding &&
      other.enableKeyFrameOnlyExtraction == enableKeyFrameOnlyExtraction &&
      other.scanBehavior == scanBehavior &&
      other.processPriority == processPriority &&
      other.interval == interval &&
      other.widthResolutions == widthResolutions &&
      other.tileWidth == tileWidth &&
      other.tileHeight == tileHeight &&
      other.qscale == qscale &&
      other.jpegQuality == jpegQuality &&
      other.processThreads == processThreads;

    @override
    int get hashCode =>
        enableHwAcceleration.hashCode +
        enableHwEncoding.hashCode +
        enableKeyFrameOnlyExtraction.hashCode +
        scanBehavior.hashCode +
        processPriority.hashCode +
        interval.hashCode +
        widthResolutions.hashCode +
        tileWidth.hashCode +
        tileHeight.hashCode +
        qscale.hashCode +
        jpegQuality.hashCode +
        processThreads.hashCode;

  factory TrickplayOptions.fromJson(Map<String, dynamic> json) => _$TrickplayOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$TrickplayOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

