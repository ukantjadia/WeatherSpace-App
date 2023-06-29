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
      height: 149,
      color: Colors.black45,
      child: ClipPath(
        clipper:  WaveClipper(),
        // ShapeBorderClipper(
        //   shape: CircleBorder(
        //     side: BorderSide(color: Colors.red, width: 4),
        //   ),
        // ),
        child: Container(
          color: Colors.red,
          height: 150,
        ),
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Path path = Path();
    double midwidth = size.width;
    // double midheight = size.height;
    path.lineTo(0, size.height);  // top 1st = a
    path.lineTo(size.width,size.height);// bottom last = c
    

    path.lineTo(size.width,0);
path.quadraticBezierTo(0, size.height/2, 0, 0);
    // path.lineTo(0,size.height);
    // path.lineTo(size.height,size.width);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}