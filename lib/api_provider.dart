import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'locator.dart';
import 'repository.dart';

class ApiProvider with ChangeNotifier {
  final ApiRepository _apiRepository = getIt<ApiRepository>();

  Future<void> checkInstituteApi() async {
    try {
      final response = await _apiRepository.checkInstituteApi();
      // Handle the response here
      print(response.data);
    } catch (e) {
      // Handle errors here
      print(e);
    }
  }
}
