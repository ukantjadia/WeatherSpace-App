import 'package:flutter/material.dart';
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
            Text("sdfsdfsfsf"),
            Image.network("https://www.ukantjadia.me/wspace/home_bg.png",width: double.infinity, fit: BoxFit.fill,),
            Column(
                mainAxisAlignment: MainAxisAlignment.end,
              children: [

                testContainer(),
              ],
            ),
            Text("sdfsdfsfsf"),
            
          ],
        )
    
        
      ),
    );
  }
}

