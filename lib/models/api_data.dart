///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class ApiDataSys {
/*
{} 
*/


  // ApiDataSys({
  // });
  ApiDataSys.fromJson(Map<String, dynamic> json) {
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}

class ApiDataClouds {
/*
{
  "all": 0
} 
*/

  int? all;

  ApiDataClouds({
    this.all,
  });
  ApiDataClouds.fromJson(Map<String, dynamic> json) {
    all = json['all']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}

class ApiDataWind {
// /*
// {} 
// */


//   ApiDataWind({
//   });
  ApiDataWind.fromJson(Map<String, dynamic> json) {
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}

class ApiDataMain {
/*
{} 
*/


  // ApiDataMain({
  // });
  ApiDataMain.fromJson(Map<String, dynamic> json) {
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    return data;
  }
}

class ApiDataWeather {
/*
{
  "id": 800,
  "main": "Clear",
  "description": "clear sky",
  "icon": "01d"
} 
*/

  int? id;
  String? main;
  String? description;
  String? icon;

  ApiDataWeather({
    this.id,
    this.main,
    this.description,
    this.icon,
  });
  ApiDataWeather.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    main = json['main']?.toString();
    description = json['description']?.toString();
    icon = json['icon']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}

class ApiDataCoord {
/*
{
  "lon": 10.99,
  "lat": 44.34
} 
*/

  double? lon;
  double? lat;

  ApiDataCoord({
    this.lon,
    this.lat,
  });
  ApiDataCoord.fromJson(Map<String, dynamic> json) {
    lon = json['lon']?.toDouble();
    lat = json['lat']?.toDouble();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}

class ApiData {
/*
{
  "coord": {
    "lon": 10.99,
    "lat": 44.34
  },
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "base": "stations",
  "main": {},
  "visibility": 10000,
  "wind": {},
  "clouds": {
    "all": 0
  },
  "dt": 1688366188,
  "sys": {},
  "timezone": 7200,
  "id": 3163858,
  "name": "Zocca",
  "cod": 200
} 
*/

  ApiDataCoord? coord;
  List<ApiDataWeather?>? weather;
  String? base;
  ApiDataMain? main;
  int? visibility;
  ApiDataWind? wind;
  ApiDataClouds? clouds;
  int? dt;
  ApiDataSys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  ApiData({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });
  ApiData.fromJson(Map<String, dynamic> json) {
    coord = (json['coord'] != null) ? ApiDataCoord.fromJson(json['coord']) : null;
  if (json['weather'] != null) {
  final v = json['weather'];
  final arr0 = <ApiDataWeather>[];
  v.forEach((v) {
  arr0.add(ApiDataWeather.fromJson(v));
  });
    weather = arr0;
    }
    base = json['base']?.toString();
    main = (json['main'] != null) ? ApiDataMain.fromJson(json['main']) : null;
    visibility = json['visibility']?.toInt();
    wind = (json['wind'] != null) ? ApiDataWind.fromJson(json['wind']) : null;
    clouds = (json['clouds'] != null) ? ApiDataClouds.fromJson(json['clouds']) : null;
    dt = json['dt']?.toInt();
    sys = (json['sys'] != null) ? ApiDataSys.fromJson(json['sys']) : null;
    timezone = json['timezone']?.toInt();
    id = json['id']?.toInt();
    name = json['name']?.toString();
    cod = json['cod']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (coord != null) {
      data['coord'] = coord!.toJson();
    }
    if (weather != null) {
      final v = weather;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data['weather'] = arr0;
    }
    data['base'] = base;
    if (main != null) {
      data['main'] = main!.toJson();
    }
    data['visibility'] = visibility;
    if (wind != null) {
      data['wind'] = wind!.toJson();
    }
    if (clouds != null) {
      data['clouds'] = clouds!.toJson();
    }
    data['dt'] = dt;
    if (sys != null) {
      data['sys'] = sys!.toJson();
    }
    data['timezone'] = timezone;
    data['id'] = id;
    data['name'] = name;
    data['cod'] = cod;
    return data;
  }
}