import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:iamZomato/model/nearby_restaurants.dart';
import 'package:iamZomato/model/restaurant.dart';

import 'api.dart';
import 'http_param.dart';

class APIService {
  final API api;

  APIService(this.api);

  Future<List<NearbyRestaurants>> getNearbyRestaurants(
      {@required Endpoint endpoint, @required HttpParam param}) async {
    final uri = api.endpointUri(endpoint);
    var query = param == null ? "" : param.toQuery();
    var fullURL = uri.toString() + query;

    try {
      var response =
          await http.get(fullURL, headers: {'user-key': '${api.apiKey}'});
      print(
          "the response for the api $fullURL  is ${json.decode(response.body)}");
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return (data['nearby_restaurants'] as List).map((e) {
          return NearbyRestaurants.fromJson(e);
        }).toList();
      } else {
        print(
            'Request $fullURL failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
        throw Exception('Error getting restaurants');
      }
    } catch (e) {
      print("The error is ${e.toString()}");
      return e;
    }
  }

  Future<Restaurant> getRestaurantDetails(
      {@required Endpoint endpoint, @required HttpParam param}) async {
    final uri = api.endpointUri(endpoint);
    var query = param == null ? "" : param.toQuery();
    var fullURL = uri.toString() + query;

    try {
      var response =
          await http.get(fullURL, headers: {'user-key': '${api.apiKey}'});
      print(
          "the response for the api $fullURL  is ${json.decode(response.body)}");
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return Restaurant.fromJson(data);
      } else {
        print(
            'Request $fullURL failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
        throw Exception('Error getting restaurants details');
      }
    } catch (e) {
      print("The error is ${e.toString()}");
      return e;
    }
  }
}
