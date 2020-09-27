import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iamZomato/model/restaurant.dart';
import 'package:iamZomato/utils/constant.dart';

class HomeCard extends StatelessWidget {
  final Function onTap;
  final Restaurant restaurant;

  HomeCard({
    @required this.onTap,
    @required this.restaurant,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: InkWell(
        onTap: () => onTap(restaurant),
        child: SizedBox(
          width: 154.0,
          height: 150.0,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(16.0, 8.0, 145.0, 130.0),
                size: Size(154.0, 168.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x1a000000),
                        offset: Offset(8, 16),
                        blurRadius: 32,
                      ),
                    ],
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(106.0, 16.0, 40.0, 32.0),
                size: Size(154.0, 168.0),
                pinRight: true,
                pinTop: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 40.0, 32.0),
                      size: Size(40.0, 32.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2.0),
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(2.0),
                            bottomLeft: Radius.circular(20.0),
                          ),
                          color: Color(0xff99adff),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(8.0, 4.0, 24.0, 24.0),
                      size: Size(40.0, 32.0),
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                            size: Size(24.0, 24.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              svg_9750qa,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(3.0, 4.5, 18.0, 15.0),
                            size: Size(24.0, 24.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child: SvgPicture.string(
                              restaurant.isLiked ? svg_v0r4hz : svg_lvs62u,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 105.0, 105.0),
                size: Size(154.0, 168.0),
                pinLeft: true,
                pinTop: true,
                fixedWidth: true,
                fixedHeight: true,
                child: CircleAvatar(
                  radius: 52.5,
                  backgroundColor: Color(0xffd8d8d8),
                  backgroundImage: (() {
                    if (restaurant.thumb.contains("http")) {
                      return NetworkImage(restaurant.thumb);
                    } else {
                      return AssetImage(restaurant.thumb);
                    }
                  }()),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(35.0, 50.0, 101.0, 69.0),
                size: Size(154.0, 168.0),
                pinRight: true,
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 48.0, 18.0),
                      size: Size(131.0, 69.0),
                      fixedHeight: true,
                      child: Text(
                        '\$${restaurant.priceRange}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'Montserrat-SemiBold',
                          fontSize: 14,
                          color: Color(0xff365eff),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 20.0, 123.0, 30.0),
                      size: Size(131.0, 69.0),
                      fixedHeight: true,
                      child: Text(
                        restaurant.name,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Color(0xff373737),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 55.0, 131.0, 40.0),
                      size: Size(131.0, 69.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: Text(
                        restaurant.cuisines,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontFamily: 'Montserrat-Regular',
                          fontSize: 10,
                          color: Color(0xff656565),
                        ),
                        textAlign: TextAlign.left,
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
}
