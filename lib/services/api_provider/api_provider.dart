import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:weather_space/models/api_data.dart';

ApiData? apiFromData;
Future<ApiData> getDataopenWeatherApi() async {
  var url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=46d5009c79e29599058676e05d760f36");
  var response = await http.get(url);

  if (response.statusCode == 200) {
    debugPrint("sdasd${(jsonDecode(response.body))}");
    apiFromData = ApiData.fromJson(jsonDecode(response.body));
    return ApiData.fromJson(jsonDecode(response.body));
    // return ApiData.fromJson(jsonDecode(response.body));
  } else {
    debugPrint("sdasd${response.statusCode}");
    throw Exception(('Failed to load Data'));
  }
}
