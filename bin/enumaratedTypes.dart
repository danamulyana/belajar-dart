enum Rainbow{
  red, orange, yellow, green, blue, indigo, violet
}

enum Weather {
  sunny, cloudy, rain, storm;
}

enum Weathertwo {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount;

  const Weathertwo(this.rainAmount);

  @override
  String toString() => "Today's weather forecast is $name with a $rainAmount% chance of rain";
}

void main(){
  print(Rainbow.values);
  print(Rainbow.blue);
  print(Rainbow.orange.index);
  /*
  [Rainbow.red, Rainbow.orange, Rainbow.yellow, Rainbow.green, Rainbow.blue, Rainbow.indigo, Rainbow.violet]
  Rainbow.blue
  1
   */
  print(Rainbow.blue.name);   // blue

  //pakai switch
  var weatherForecast = Weather.cloudy;

  switch(weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }
  //  kita perlu menangani semua kemungkinan nilai enums yang Ada

  print(Weathertwo.rain.rainAmount);

  //overide
  print(Weather.cloudy.toString());
  // atau
  print(Weather.cloudy);
}