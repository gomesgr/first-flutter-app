import 'package:flutter/material.dart';
import '../../models/location.dart';
import '../../app.dart';
import 'location_card.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locations = Location.fetchAll();
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
                  child: LocationCard(location.name, location.imagePath),
                  onTap: () => _onLocationTap(context, location.id),
                ))
            .toList(),
      ),
    );
  }

  void _onLocationTap(BuildContext ctx, int locationID) {
    Navigator.pushNamed(ctx, LocationDetailRoute,
        arguments: {'id': locationID});
  }
}
