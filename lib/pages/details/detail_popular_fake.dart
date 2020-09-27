import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:iamZomato/model/restaurant.dart';
import 'package:iamZomato/pages/details/detail_like.dart';
import 'package:iamZomato/pages/details/detail_play.dart';
import 'package:iamZomato/pages/details/detail_price.dart';

import 'detail_add.dart';
import 'detail_background.dart';
import 'detail_description.dart';
import 'detail_image.dart';
import 'detail_name.dart';
import 'detail_quality.dart';

class PopularDetailScreenFake extends StatefulWidget {
  final Restaurant mRestaurant;

  PopularDetailScreenFake({
    @required this.mRestaurant,
  });

  @override
  _PopularDetailScreenFakeState createState() =>
      _PopularDetailScreenFakeState();
}

class _PopularDetailScreenFakeState extends State<PopularDetailScreenFake> {
  int count;

  Restaurant get mRestaurant => widget.mRestaurant;

  @override
  void initState() {
    count = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              DetailBackground(),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 60.0, 479.5, 752.0),
                size: Size(480.0, 812.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Stack(
                  children: <Widget>[
                    DetailAdd(
                      onTap: _onTapAdd,
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 163.0, 479.5, 489.0),
                      size: Size(479.5, 752.0),
                      pinLeft: true,
                      pinRight: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(44.0),
                            bottomRight: Radius.circular(11.0),
                            bottomLeft: Radius.circular(44.0),
                          ),
                          color: Color(0xffedf0ff),
                        ),
                      ),
                    ),
                    DetailQuality(
                      onTapPlus: _onTapPlus,
                      onTapMinus: _onTapMinus,
                      count: count,
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 479.5, 560.0),
                      size: Size(479.5, 752.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(44.0),
                            topRight: Radius.circular(44.0),
                            bottomRight: Radius.circular(11.0),
                            bottomLeft: Radius.circular(44.0),
                          ),
                          color: Color(0xfffcf9f7),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x1a000000),
                              offset: Offset(8, -16),
                              blurRadius: 32,
                            ),
                          ],
                        ),
                      ),
                    ),
                    DetailDescription(
                      description: mRestaurant.cuisines,
                    ),
                    DetailPrice(
                      price: mRestaurant.priceRange,
                    ),
                    DetailName(
                      name: mRestaurant.name,
                    ),
                    DetailImage(
                      imageUrl: mRestaurant.thumb,
                    ),
                    DetailPlay(
                      onTap: _onTapPlay,
                    ),
                    DetailLike(
                      isLiked: mRestaurant.isLiked,
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(176.0, 8.0, 24.0, 4.0),
                      size: Size(479.5, 752.0),
                      pinTop: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.5),
                          color: Color(0xff365eff),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  void _onTapAdd() {}

  void _onTapPlay() {}

  void _onTapPlus() {
    setState(() => count++);
  }

  void _onTapMinus() {
    if (count > 1) setState(() => count--);
  }
}
