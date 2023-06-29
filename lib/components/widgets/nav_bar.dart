import 'package:flutter/material.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            child: Text('sf  dsfsfsfsf'),
          ))
        ],
      ),
      bottomNavigationBar: testContainer(),
    );
  }
}

class testContainer extends StatefulWidget {
  const testContainer({super.key});

  @override
  State<testContainer> createState() => _testContainerState();
}

class _testContainerState extends State<testContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 106,
      child: Stack(
        children: [
          RotatedBox(
            quarterTurns: 3,
            child: ClipPath(
             clipper:  WaveClipper(),
             child: Container(
               color: Colors.red,
             ),
                ),
          ),
          Container(
            child: ClipPath(
              clipper:  WaveClipper(),
              child: Container(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// class ReverseWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(size.width,size.height);// bottom last = c
//     path.lineTo( size.height,size.width);  // top 1st = a
//     return path;
//   }
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double midwidth = size.width;
    path.lineTo(0, size.height);  // top 1st = a
    path.lineTo(size.width,size.height);// bottom last = c
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
