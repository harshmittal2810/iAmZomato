import 'package:flutter/foundation.dart';
import 'package:iamZomato/private/private.dart';

enum Endpoint { geocode, restaurant }

class API {
  final String apiKey;

  API({@required this.apiKey});

  factory API.sandbox() => API(apiKey: Private.zomatoKey);

  static final String host = 'developers.zomato.com';

  Uri endpointUri(Endpoint endpoint) => Uri(
        scheme: 'https',
        host: host,
        path: _path[endpoint],
      );

  static Map<Endpoint, String> _path = {
    Endpoint.geocode: 'api/v2.1/geocode',
    Endpoint.restaurant: 'api/v2.1/restaurant'
  };
}
