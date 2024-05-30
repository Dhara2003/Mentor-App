import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

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
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _businessProfileUpdate =
          await secureStorage.getStringList('ff_businessProfileUpdate') ??
              _businessProfileUpdate;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _businessProfileUpdate = [];
  List<String> get businessProfileUpdate => _businessProfileUpdate;
  set businessProfileUpdate(List<String> value) {
    _businessProfileUpdate = value;
    secureStorage.setStringList('ff_businessProfileUpdate', value);
  }

  void deleteBusinessProfileUpdate() {
    secureStorage.delete(key: 'ff_businessProfileUpdate');
  }

  void addToBusinessProfileUpdate(String value) {
    _businessProfileUpdate.add(value);
    secureStorage.setStringList(
        'ff_businessProfileUpdate', _businessProfileUpdate);
  }

  void removeFromBusinessProfileUpdate(String value) {
    _businessProfileUpdate.remove(value);
    secureStorage.setStringList(
        'ff_businessProfileUpdate', _businessProfileUpdate);
  }

  void removeAtIndexFromBusinessProfileUpdate(int index) {
    _businessProfileUpdate.removeAt(index);
    secureStorage.setStringList(
        'ff_businessProfileUpdate', _businessProfileUpdate);
  }

  void updateBusinessProfileUpdateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _businessProfileUpdate[index] = updateFn(_businessProfileUpdate[index]);
    secureStorage.setStringList(
        'ff_businessProfileUpdate', _businessProfileUpdate);
  }

  void insertAtIndexInBusinessProfileUpdate(int index, String value) {
    _businessProfileUpdate.insert(index, value);
    secureStorage.setStringList(
        'ff_businessProfileUpdate', _businessProfileUpdate);
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

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
