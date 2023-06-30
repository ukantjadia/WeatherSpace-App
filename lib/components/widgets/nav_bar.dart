import 'package:flutter/material.dart';
import 'dart:math' as math;


class testContainer extends StatefulWidget {
  const testContainer({super.key});

  @override
  State<testContainer> createState() => _testContainerState();
}

class _testContainerState extends State<testContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101 ,
      child: Stack(
        children: [ 
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [ Color.fromRGBO(117, 130, 244, 0.5),Color(0xFF7582F4)],
                  ),
                ),
                // color: Color(0xFF7582F4),
              ),
            ),
          ),
          Container(
            child: ClipPath(
              clipper: WaveClipper(),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromRGBO(117, 130, 244, 0.5), Color.fromARGB(37, 36, 76, 0),],
                  ),
                ),
                // color: Color(0xFF7582F4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double midwidth = size.width;
    path.lineTo(0, size.height); // top 1st = a
    path.lineTo(size.width , size.height); // bottom last = c
    path.lineTo(size.width , size.height/2); // bottom last = c
    // path.lineTo(size.width,0); // top 1st = a
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
