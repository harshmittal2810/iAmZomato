import 'package:iamZomato/model/nearby_restaurants.dart';
import 'package:iamZomato/services/api.dart';

class EndpointData {
  final Map<Endpoint, List<NearbyRestaurants>> values;

  EndpointData(this.values);

  List<NearbyRestaurants> get nearbyRestaurants => values[Endpoint.geocode];

  @override
  String toString() => 'nearby: $nearbyRestaurants';
}
