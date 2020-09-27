import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iamZomato/pages/home/home.dart';
import 'package:iamZomato/pages/home/menu.dart';
import 'package:iamZomato/repository/data_repository.dart';
import 'package:iamZomato/services/api.dart';
import 'package:iamZomato/services/api_service.dart';

import 'bloc/restaurants_bloc.dart';

class Routes extends StatefulWidget {
  @override
  _RoutesState createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Menu(),
          ),
          Expanded(
              flex: 4,
              child: BlocProvider(
                create: (context) =>
                    RestaurantsBloc(DataRepository(APIService(API.sandbox()))),
                child: HomeScreen(),
              )),
        ],
      ),
    );
  }
}
