import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/urls_assets/url_assets.dart';
// import 'package:flutter_svg/svg.dart';

class testContainer extends StatefulWidget {
  const testContainer({super.key});

  @override
  State<testContainer> createState() => _testContainerState();
}

class _testContainerState extends State<testContainer> {
  /// netwrok url

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      // color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 80,
            child: Stack(
              children: [
                /// second traingle rotated
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF25244C),

                            // Color(0xFF38386A),
                            Color(0xFF25244C),
                            // Color(0xFF7582F4),
                          ],
                        ),
                      ),
                      // color: Color(0xFF7582F4),
                    ),
                  ),
                ),

                /// first traingle not rotated
                Container(
                  child: ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                        // color: Color(0xFF7582F4),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF25244C),

                            // Color(0xFF38386A),
                            Color(0xFF25244C),
                            // Color(0xFF7582F4),
                          ],
                        ),
                      ),
                      // color: Color(0xFF7582F4),
                    ),
                  ),
                ),
              ],
            ),
          ),

          /// adding icon
          Image.network(nav_arc),

          Padding(
            padding: const EdgeInsetsDirectional.only(end: 14),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(nav_bottom)),
                //         boxShadow: [
                //   BoxShadow(
                //     color: Colors.grey.shade600,
                //     spreadRadius: 0.1,
                //     blurRadius: 1,
                //     offset: Offset(1, 1)
                //   )
                // ]
              ),
            ),
          ),

          Container(
            // color: Colors.red,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(nav_marker_assets),
                WidthBox(175),
                Image.asset(nav_menu_assets)
              ],
            ),
          ).pOnly(top:36),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height); // top 1st = a
    path.lineTo(size.width, size.height); // bottom last = c
    path.lineTo(size.width, size.height / 2); // bottom last = c
    // path.lineTo(size.width,0); // top 1st = a
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// void imgCaller() {}
