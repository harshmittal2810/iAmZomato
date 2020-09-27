import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iamZomato/bloc/restaurants_bloc.dart';
import 'package:iamZomato/model/nearby_restaurants.dart';
import 'package:iamZomato/model/restaurant.dart';
import 'package:iamZomato/pages/details/detail.dart';
import 'package:iamZomato/pages/details/detail_popular_fake.dart';
import 'package:location/location.dart';

import 'home_card.dart';
import 'home_filter.dart';
import 'home_list_title.dart';
import 'home_title.dart';
import 'home_view_all.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Restaurant> popularList;
  double _lat;
  double _lon;

  void getNearbyRestaurants() async {
    final restaurantBloc = BlocProvider.of<RestaurantsBloc>(context);
    restaurantBloc.add(GetNearbyRestaurants(_lat, _lon));
  }

  @override
  void initState() {
    super.initState();
    _buildPopularData();

    Location().getLocation().then(
      (locationData) {
        _lat = locationData.latitude;
        _lon = locationData.longitude;
        _lat = 19.0760;
        _lon = 72.8777;
        if ((_lat != null) && (_lon != null)) {
          getNearbyRestaurants();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 45.0),
      child: Column(
        children: [
          HomeTitle(),
          Expanded(
            flex: 1,
            child: HomeFilter(),
          ),
          HomeListTitle(
            title: 'Near you',
          ),
          Expanded(
              flex: 4,
              child: BlocListener<RestaurantsBloc, RestaurantsState>(
                listener: (context, state) {
                  if (state is RestauranstsError) {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
                child: BlocBuilder<RestaurantsBloc, RestaurantsState>(
                  builder: (context, state) {
                    if (state is RestaurantsInitial) {
                      return Container();
                    } else if (state is RestaurantsLoading) {
                      return buildLoading();
                    } else if (state is RestaurantsLoaded) {
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.restaurants.length,
                        itemBuilder: (context, position) {
                          NearbyRestaurants nearbyRes =
                              state.restaurants[position];
                          return HomeCard(
                            onTap: _onTapRestaurant,
                            restaurant: nearbyRes.restaurant,
                          );
                        },
                      );
                    } else if (state is RestauranstsError) {
                      return Container(
                        child: Text(state.message),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              )),
          HomeListTitle(
            title: 'Popular',
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularList.length,
              itemBuilder: (context, position) {
                Restaurant restaurant = popularList[position];
                return HomeCard(
                  onTap: _onTapPopular,
                  restaurant: restaurant,
                );
              },
            ),
          ),
          HomeViewAll(
            onTap: _onTapViewAll,
          ),
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  void _onTapRestaurant(Restaurant restaurant) async {
    await Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => BlocProvider.value(
              value: BlocProvider.of<RestaurantsBloc>(context),
              child: DetailScreen(
                mRestaurant: restaurant,
              ),
            )));
    getNearbyRestaurants();
  }

  void _onTapPopular(Restaurant mRestaurant) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => PopularDetailScreenFake(
              mRestaurant: mRestaurant,
            )));
  }

  void _onTapViewAll() {}

  void _buildPopularData() {
    popularList = List<Restaurant>();
    popularList.add(Restaurant(
      thumb: 'assets/images/salmon.png',
      priceRange: 28,
      name: 'Salmon Sushi',
      cuisines: 'Salmon, carrot rolls, spinach and some sauce.',
      isLiked: false,
    ));
    popularList.add(Restaurant(
      thumb: 'assets/images/avocado.png',
      priceRange: 11,
      name: 'Avocado Salad',
      cuisines: 'Fresh hamburger with chicken, salad, tomatoes.',
      isLiked: true,
    ));
    popularList.add(Restaurant(
      thumb: 'assets/images/salmon.png',
      priceRange: 28,
      name: 'Salmon Sushi',
      cuisines: 'Salmon, carrot rolls, spinach and some sauce.',
      isLiked: false,
    ));
    popularList.add(Restaurant(
      thumb: 'assets/images/avocado.png',
      priceRange: 11,
      name: 'Avocado Salad',
      cuisines: 'Fresh hamburger with chicken, salad, tomatoes.',
      isLiked: true,
    ));
  }
}
