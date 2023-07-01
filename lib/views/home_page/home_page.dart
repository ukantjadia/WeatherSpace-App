import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_space/consts/urls_assets/url_assets.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../../components/widgets/nav_bar.dart';
import '../../consts/regular.dart';

class homePage extends StatelessWidget {
  // homePage({super.key});

  // helpers helper  =  ;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        // bottomNavigationBar: testContainer(),
        body: Container(
      height: height,
      width: width,
      child: Stack(children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              home_bg_png,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Image.asset(
              snowman_png,
              width: double.infinity,
              fit: BoxFit.contain,
            ).pOnly(bottom: 66),
            testContainer()
          ],
        ),
        // Text("sdfsdfsfsdfsdsdfasd"),
        RichText(
          text: const TextSpan(
            text: "Montreal\n",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 39,
            ),
            children: [
              TextSpan(
                text: "36.C\n",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 63,
                ),
              ),
              TextSpan(
                text: "Mostly Clear\n",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ).pOnly(top:context.percentHeight*10,left:context.percentWidth * 10),
      ]),
    ));
  }
}
