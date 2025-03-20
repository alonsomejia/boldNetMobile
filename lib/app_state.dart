import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _localServers = prefs
              .getStringList('ff_localServers')
              ?.map((x) {
                try {
                  return ServerStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _localServers;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<ServerStruct> _localServers = [];
  List<ServerStruct> get localServers => _localServers;
  set localServers(List<ServerStruct> value) {
    _localServers = value;
    prefs.setStringList(
        'ff_localServers', value.map((x) => x.serialize()).toList());
  }

  void addToLocalServers(ServerStruct value) {
    localServers.add(value);
    prefs.setStringList(
        'ff_localServers', _localServers.map((x) => x.serialize()).toList());
  }

  void removeFromLocalServers(ServerStruct value) {
    localServers.remove(value);
    prefs.setStringList(
        'ff_localServers', _localServers.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLocalServers(int index) {
    localServers.removeAt(index);
    prefs.setStringList(
        'ff_localServers', _localServers.map((x) => x.serialize()).toList());
  }

  void updateLocalServersAtIndex(
    int index,
    ServerStruct Function(ServerStruct) updateFn,
  ) {
    localServers[index] = updateFn(_localServers[index]);
    prefs.setStringList(
        'ff_localServers', _localServers.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLocalServers(int index, ServerStruct value) {
    localServers.insert(index, value);
    prefs.setStringList(
        'ff_localServers', _localServers.map((x) => x.serialize()).toList());
  }

  ServerStruct _selectedServer = ServerStruct();
  ServerStruct get selectedServer => _selectedServer;
  set selectedServer(ServerStruct value) {
    _selectedServer = value;
  }

  void updateSelectedServerStruct(Function(ServerStruct) updateFn) {
    updateFn(_selectedServer);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
