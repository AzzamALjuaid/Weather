import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:weather/weatherModel.dart';

class WeatherData{
  Future<Weather> getData(var latiude, var longitude) async {
    var uriCall = Uri.parse(
        'http://api.weatherapi.com/v1/current.json?key=ac418fe0593e4a1ea16122502231503&q=$latiude,$longitude&aqi=no');
        var response = await http.get(uriCall);
    var body = jsonDecode(response.body);
    return Weather.fromJson(body);
  }
}