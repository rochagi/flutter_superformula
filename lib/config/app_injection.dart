import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:restaurant_tour/app/shared/api_client/api_client_imports.dart';
import 'package:restaurant_tour/app/shared/preferences/i_preferences.dart';
import 'package:restaurant_tour/app/shared/preferences/preferences_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

final injection = GetIt.instance;
void initInjection ({
  required Dio dio,
  required SharedPreferences preferencesProvider,
}){
  injection.registerLazySingleton<IPreferences>(
    () => PreferencesImpl(preferences: preferencesProvider)
  );

  dio.interceptors.add(ApiDioInterception());
  injection.registerLazySingleton<IApiClient>(
    () => ApiClientDioImpl(dio: dio,)
  );
}