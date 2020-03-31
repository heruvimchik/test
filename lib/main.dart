import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/great_places.dart';
import 'screens/places_list_screen.dart';
import 'screens/add_place_screen.dart';
import 'screens/place_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
          title: 'Great Places',
          theme: ThemeData(
            primarySwatch: Colors.indigo,
            accentColor: Colors.amber,
          ),
          routes: {
            AddPlaceScreen.routeName: (ctx) => AddPlaceScreen(),
            PlaceDetailScreen.routeName: (ctx) => PlaceDetailScreen(),
          },
          home: PlacesListScreen()),
    );
  }
}