// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WhiteLabelingStruct extends BaseStruct {
  WhiteLabelingStruct({
    String? logoUrl,
    String? fontColor,
    String? buttonColor,
    String? backgroundColor,
  })  : _logoUrl = logoUrl,
        _fontColor = fontColor,
        _buttonColor = buttonColor,
        _backgroundColor = backgroundColor;

  // "logoUrl" field.
  String? _logoUrl;
  String get logoUrl => _logoUrl ?? '';
  set logoUrl(String? val) => _logoUrl = val;

  bool hasLogoUrl() => _logoUrl != null;

  // "fontColor" field.
  String? _fontColor;
  String get fontColor => _fontColor ?? '';
  set fontColor(String? val) => _fontColor = val;

  bool hasFontColor() => _fontColor != null;

  // "buttonColor" field.
  String? _buttonColor;
  String get buttonColor => _buttonColor ?? '';
  set buttonColor(String? val) => _buttonColor = val;

  bool hasButtonColor() => _buttonColor != null;

  // "backgroundColor" field.
  String? _backgroundColor;
  String get backgroundColor => _backgroundColor ?? '';
  set backgroundColor(String? val) => _backgroundColor = val;

  bool hasBackgroundColor() => _backgroundColor != null;

  static WhiteLabelingStruct fromMap(Map<String, dynamic> data) =>
      WhiteLabelingStruct(
        logoUrl: data['logoUrl'] as String?,
        fontColor: data['fontColor'] as String?,
        buttonColor: data['buttonColor'] as String?,
        backgroundColor: data['backgroundColor'] as String?,
      );

  static WhiteLabelingStruct? maybeFromMap(dynamic data) => data is Map
      ? WhiteLabelingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'logoUrl': _logoUrl,
        'fontColor': _fontColor,
        'buttonColor': _buttonColor,
        'backgroundColor': _backgroundColor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'logoUrl': serializeParam(
          _logoUrl,
          ParamType.String,
        ),
        'fontColor': serializeParam(
          _fontColor,
          ParamType.String,
        ),
        'buttonColor': serializeParam(
          _buttonColor,
          ParamType.String,
        ),
        'backgroundColor': serializeParam(
          _backgroundColor,
          ParamType.String,
        ),
      }.withoutNulls;

  static WhiteLabelingStruct fromSerializableMap(Map<String, dynamic> data) =>
      WhiteLabelingStruct(
        logoUrl: deserializeParam(
          data['logoUrl'],
          ParamType.String,
          false,
        ),
        fontColor: deserializeParam(
          data['fontColor'],
          ParamType.String,
          false,
        ),
        buttonColor: deserializeParam(
          data['buttonColor'],
          ParamType.String,
          false,
        ),
        backgroundColor: deserializeParam(
          data['backgroundColor'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'WhiteLabelingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is WhiteLabelingStruct &&
        logoUrl == other.logoUrl &&
        fontColor == other.fontColor &&
        buttonColor == other.buttonColor &&
        backgroundColor == other.backgroundColor;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([logoUrl, fontColor, buttonColor, backgroundColor]);
}

WhiteLabelingStruct createWhiteLabelingStruct({
  String? logoUrl,
  String? fontColor,
  String? buttonColor,
  String? backgroundColor,
}) =>
    WhiteLabelingStruct(
      logoUrl: logoUrl,
      fontColor: fontColor,
      buttonColor: buttonColor,
      backgroundColor: backgroundColor,
    );
