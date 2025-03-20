// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServerStruct extends BaseStruct {
  ServerStruct({
    String? name,
    String? url,
    WhiteLabelingStruct? whiteLabeling,
  })  : _name = name,
        _url = url,
        _whiteLabeling = whiteLabeling;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;

  bool hasUrl() => _url != null;

  // "whiteLabeling" field.
  WhiteLabelingStruct? _whiteLabeling;
  WhiteLabelingStruct get whiteLabeling =>
      _whiteLabeling ?? WhiteLabelingStruct();
  set whiteLabeling(WhiteLabelingStruct? val) => _whiteLabeling = val;

  void updateWhiteLabeling(Function(WhiteLabelingStruct) updateFn) {
    updateFn(_whiteLabeling ??= WhiteLabelingStruct());
  }

  bool hasWhiteLabeling() => _whiteLabeling != null;

  static ServerStruct fromMap(Map<String, dynamic> data) => ServerStruct(
        name: data['name'] as String?,
        url: data['url'] as String?,
        whiteLabeling: data['whiteLabeling'] is WhiteLabelingStruct
            ? data['whiteLabeling']
            : WhiteLabelingStruct.maybeFromMap(data['whiteLabeling']),
      );

  static ServerStruct? maybeFromMap(dynamic data) =>
      data is Map ? ServerStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'url': _url,
        'whiteLabeling': _whiteLabeling?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'whiteLabeling': serializeParam(
          _whiteLabeling,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ServerStruct fromSerializableMap(Map<String, dynamic> data) =>
      ServerStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        whiteLabeling: deserializeStructParam(
          data['whiteLabeling'],
          ParamType.DataStruct,
          false,
          structBuilder: WhiteLabelingStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ServerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ServerStruct &&
        name == other.name &&
        url == other.url &&
        whiteLabeling == other.whiteLabeling;
  }

  @override
  int get hashCode => const ListEquality().hash([name, url, whiteLabeling]);
}

ServerStruct createServerStruct({
  String? name,
  String? url,
  WhiteLabelingStruct? whiteLabeling,
}) =>
    ServerStruct(
      name: name,
      url: url,
      whiteLabeling: whiteLabeling ?? WhiteLabelingStruct(),
    );
