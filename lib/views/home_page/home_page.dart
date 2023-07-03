import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:weather_space/consts/urls_assets/url_assets.dart';
import 'package:weather_space/models/api_data.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../../components/widgets/nav_bar.dart';
import '../../services/api_provider/api_provider.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

late Future<ApiData> openweaterAPI;
late List<dynamic> api_data = [];

class _homePageState extends State<homePage> {
  @override
  void initState() {
    super.initState();
    // getDataopenWeatherApi().then((openweaterAPI) {
    //   api_data = openweaterAPI as List;
    // });
    getDataopenWeatherApi();
    // debugPrint("sfsfs        ${openweaterAPI.runtimeType}");
  }

// Print(openWeatherAPI);
  @override
  Widget build(BuildContext context) {
    // String _api = openweaterAPI.toString();
    // int _api2 = ApiData().id!.toInt();
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    // debugPrint("${openweatherAPI.runtimeType}");

    return Scaffold(
      // bottomNavigationBar: testContainer(),
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
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
            // FutureBuilder(builder: (context,snapshot){
            //   return
            // }),
            // caller,
            // Text("${ApiData().timezone.toInt()?}",style: TextStyle(
            //       fontWeight: FontWeight.w400,
            //       fontSize: 39,color: Colors.red
            //     )).pOnly(top: context.percentHeight * 30,
            //     left: context.percentWidth * 30),
            // FutureBuilder(
            //   future: openweaterAPI,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       return Text(
            //         snapshot.data!.name!.toString(),
            //         style: TextStyle(
            //             fontWeight: FontWeight.w400,
            //             fontSize: 39,
            //             color: Colors.red),
            //       );
            //     } else if (snapshot.hasError) {
            //       return Text("slfjafljasldf ${snapshot.error}");
            //     } else {
            //       return Scaffold(
            //         body: Center(
            //           child: CircularProgressIndicator(),
            //         ),
            //       );
            //     }
            //   },
            // ),
            // Text("${apiFromData?.wind[0]?}",
                 // style: TextStyle(
                 //     fontWeight: FontWeight.w400,
                 //     fontSize: 39,
                 //     color: Colors.red)),
            RichText(
              text: const TextSpan(
                text: "api",
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
            ).pOnly(
                top: context.percentHeight * 10,
                left: context.percentWidth * 10),
          ],
        ),
      ),
    );
  }
}

// void caller() {
//   FutureBuilder(
//     future: openweaterAPI,
//     builder: (context, snapshot) {
//       if (snapshot.hasData) {
//         return Text(snapshot.data!.timezone!.toString());
//       } else if (snapshot.hasError) {
//         return Text("slfjafljasldf ${snapshot.error}");
//       } else {
//         return Scaffold(
//           body: Center(
//             child: CircularProgressIndicator(),
//           ),
//         );
//       }
//     },
//   );
// }
