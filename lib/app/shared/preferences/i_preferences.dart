import 'preferences.dart';
import 'preferences_enum.dart';

abstract interface class IPreferences {
  Future<void> save<T>({required T data, required PrefencesKeyEnum key, required PreferencesType type});
  T? get<T>({required PrefencesKeyEnum key, required PreferencesType type});
  bool checkIfExists({required PrefencesKeyEnum key});

  Future<void> delete({required PrefencesKeyEnum key});
  Future<void> deleteAll();
}
