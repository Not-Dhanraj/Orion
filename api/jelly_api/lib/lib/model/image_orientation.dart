//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum ImageOrientation {
      @JsonValue(r'TopLeft')
      topLeft(r'TopLeft'),
      @JsonValue(r'TopRight')
      topRight(r'TopRight'),
      @JsonValue(r'BottomRight')
      bottomRight(r'BottomRight'),
      @JsonValue(r'BottomLeft')
      bottomLeft(r'BottomLeft'),
      @JsonValue(r'LeftTop')
      leftTop(r'LeftTop'),
      @JsonValue(r'RightTop')
      rightTop(r'RightTop'),
      @JsonValue(r'RightBottom')
      rightBottom(r'RightBottom'),
      @JsonValue(r'LeftBottom')
      leftBottom(r'LeftBottom');

  const ImageOrientation(this.value);

  final String value;

  @override
  String toString() => value;
}
