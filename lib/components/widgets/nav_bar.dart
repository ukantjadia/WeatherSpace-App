import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class navBar extends StatefulWidget {
  const navBar({super.key});

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
double screenWidth = MediaQuery. of(context). size. width;

    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(child: Text('sf  dsfsfsfsf'),))
        ],
      ),
      bottomNavigationBar: testContainer(),

      
    )
    ;
  }
}

class testContainer extends StatefulWidget {
  const testContainer( {super.key});

  @override
  State<testContainer> createState() => _testContainerState();
}
class _testContainerState extends State<testContainer> {
  @override

  Widget build(BuildContext context) {
    return Container(height:49,color: Colors.black45,
    
    child:  ClipPath(
    clipper: ProsteBezierCurve(
      position: ClipPosition.top,
      list: [
        BezierCurveSection(
          start: Offset(30, 0),
          top: Offset(60* 2, 0),
          end: Offset(30, 0),
        ),
      ],
    ),
    child: Container(
      color: Colors.red,
      height: 150,
    ),
  ),
    );
  }
}