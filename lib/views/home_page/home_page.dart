import 'package:flutter/material.dart';
import 'package:weather_space/consts/urls_assets/url_assets.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import '../../components/widgets/nav_bar.dart';

class homePage extends StatelessWidget {
  // homePage({super.key});

  // helpers helper  =  ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // bottomNavigationBar: testContainer(),
          body: Stack(
        children: [
          Image.network(
            home_bg,width: double.infinity,fit: BoxFit. fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [testContainer()],
          ),
        ],
      )),
    );
  }
}
