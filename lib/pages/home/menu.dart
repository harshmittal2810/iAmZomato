import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iamZomato/utils/constant.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 86.0,
          height: 812.0,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 86.0, 812.0),
                size: Size(86.0, 812.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: SvgPicture.string(
                  // Adobe XD layer: 'Path 3 background' (shape)
                  svg_496moa,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(16.0, 729.5, 24.0, 24.0),
                size: Size(86.0, 812.0),
                pinBottom: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Stack(
                  // Adobe XD layer: 'cart' icon (group)
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                      size: Size(24.0, 24.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        // Adobe XD layer: 'Rectangle' (shape)
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(3.6, 0.5, 16.8, 23.0),
                      size: Size(24.0, 24.0),
                      pinTop: true,
                      pinBottom: true,
                      fixedWidth: true,
                      child: Stack(
                        // Adobe XD layer: 'shopping-bag' (group)
                        children: <Widget>[
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(5.2, 0.0, 6.4, 5.0),
                            size: Size(16.8, 23.0),
                            pinTop: true,
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Path' (shape)
                                SvgPicture.string(
                              svg_smpafo,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(3.9, 7.0, 2.0, 2.0),
                            size: Size(16.8, 23.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Oval' (shape)
                                Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff111111)),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(10.9, 7.0, 2.0, 2.0),
                            size: Size(16.8, 23.0),
                            fixedWidth: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Oval' (shape)
                                Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff111111)),
                              ),
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.0, 5.0, 16.8, 18.0),
                            size: Size(16.8, 23.0),
                            pinLeft: true,
                            pinRight: true,
                            pinTop: true,
                            pinBottom: true,
                            child:
                                // Adobe XD layer: 'Path' (shape)
                                SvgPicture.string(
                              svg_5mhuvd,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Pinned.fromSize(
                            bounds: Rect.fromLTWH(0.2, 20.0, 16.3, 1.0),
                            size: Size(16.8, 23.0),
                            pinLeft: true,
                            pinRight: true,
                            pinBottom: true,
                            fixedHeight: true,
                            child:
                                // Adobe XD layer: 'Path' (shape)
                                SvgPicture.string(
                              svg_kr8mfj,
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
                bounds: Rect.fromLTWH(20.0, 148.0, 24.0, 24.0),
                size: Size(86.0, 812.0),
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Search' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                      size: Size(24.0, 24.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'bound' (shape)
                          SvgPicture.string(
                        svg_9750qa,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(15.0, 15.0, 6.0, 6.0),
                      size: Size(24.0, 24.0),
                      pinRight: true,
                      pinBottom: true,
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Path-2' (shape)
                          SvgPicture.string(
                        svg_x9i07p,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(4.0, 4.0, 14.0, 14.0),
                      size: Size(24.0, 24.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Path' (shape)
                          SvgPicture.string(
                        svg_hucw6b,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(20.0, 76.0, 24.0, 24.0),
                size: Size(86.0, 812.0),
                pinTop: true,
                fixedWidth: true,
                fixedHeight: true,
                child:
                    // Adobe XD layer: 'Layout-4-Blocks' (group)
                    Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 24.0, 24.0),
                      size: Size(24.0, 24.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'bound' (shape)
                          SvgPicture.string(
                        svg_9750qa,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(4.0, 4.0, 7.0, 7.0),
                      size: Size(24.0, 24.0),
                      fixedWidth: true,
                      fixedHeight: true,
                      child:
                          // Adobe XD layer: 'Rectangle-7' (shape)
                          Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.5),
                          color: const Color(0xff111111),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(4.0, 4.0, 16.0, 16.0),
                      size: Size(24.0, 24.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child:
                          // Adobe XD layer: 'Combined-Shape' (shape)
                          SvgPicture.string(
                        svg_2ugqxp,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(18.0, 642.0, 34.0, 13.0),
                size: Size(86.0, 812.0),
                fixedHeight: true,
                child: Transform.rotate(
                  angle: -1.5708,
                  child:
                      // Adobe XD layer: 'Home' (text)
                      Text(
                    'Home',
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay-Bold',
                      fontSize: 13,
                      color: const Color(0xff365eff),
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(10.5, 537.5, 42.0, 13.0),
                size: Size(86.0, 812.0),
                fixedHeight: true,
                child: Transform.rotate(
                  angle: -1.5708,
                  child:
                      // Adobe XD layer: 'Invoice' (text)
                      Text(
                    'Invoice',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      color: const Color(0xff000000),
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(-1.0, 417.5, 64.0, 13.0),
                size: Size(86.0, 812.0),
                fixedHeight: true,
                child: Transform.rotate(
                  angle: -1.5708,
                  child:
                      // Adobe XD layer: 'Notification' (text)
                      Text(
                    'Notification',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      color: const Color(0xff000000),
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.5, 287.5, 62.0, 13.0),
                size: Size(86.0, 812.0),
                fixedHeight: true,
                child: Transform.rotate(
                  angle: -1.5708,
                  child:
                      // Adobe XD layer: 'My Profile' (text)
                      Text(
                    'My Profile',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 13,
                      color: const Color(0xff000000),
                      height: 1,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
        Transform.translate(
          offset: Offset(47.5, 645.0),
          child:
              // Adobe XD layer: 'dot' (shape)
              Container(
            width: 6.0,
            height: 6.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
              color: const Color(0xfffcf9f7),
            ),
          ),
        ),
      ],
    );
  }
}
