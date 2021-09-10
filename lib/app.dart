import 'package:flutter/material.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';
import 'screens/locations/locations.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      theme: ThemeData(
        primaryColor: PrimaryColor,
        accentColor: AccentColor,
        focusColor: FocusColor,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(subtitle1: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          subtitle1: TitleTextStyle,
          subtitle2: BoxTextStyle,
          bodyText2: BodyText2TextStyle,
        ),
      ),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      print(settings);
      final Map<String, int>? args = (settings.arguments as Map<String, int>?);
      print(args?['id']);
      Widget screen;
      switch (settings.name) {
        case LocationsRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
          screen = LocationDetail(args?['id'] as int);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
