import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_tour/config/app_injection.dart';
import 'package:restaurant_tour/config/app_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

appBootstrap(){
   return runZonedGuarded(() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Dio dio = Dio();

 

    initInjection(
      dio: dio,
      preferencesProvider: preferences,
    );
    runApp(const AppWidget()); 
  }, (e,s){
log(e.toString());
  });

}