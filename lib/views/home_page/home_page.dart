import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class homePage extends StatelessWidget {
  // homePage({super.key});

  // helpers helper  =  ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // SvgPicture.asset('assets/images/snowman.svg'),
          
          // Container(
          //   width:double.infinity,height:double.infinity,
          //   child: 
          //   Image.asset(
          //     'assets/images/home_bg.png',
          //     fit: BoxFit.fitWidth,
          //   ),
          //   // Text("data")
          // ),
          // Container(
          //   width:double.infinity,height:double.infinity,child: Image.asset('assets/images/snowman.jpg',fit: BoxFit.scaleDown,)),
            SvgPicture.network(
  'https://www.ukantjadia.me/wspace/home_bg.svg',)
        ],
      ),
    );
  }
}
// class svgLoader extends StatelessWidget {
//   const svgLoader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SvgPicture.network("https://ukantjadia.me/wspace/home_bg.svg");
//   }
// }