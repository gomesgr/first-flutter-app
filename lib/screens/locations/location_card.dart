import 'package:flutter/material.dart';
import '../location_detail/image_banner.dart';
import '../location_detail/text_Box.dart';
// Nome, foto

class LocationCard extends StatelessWidget {
  final String _locationName;
  final String _imagePath;

  LocationCard(this._locationName, this._imagePath);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          child: Container(
            height: 205,
            child: Image.asset(
              _imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(child: TextBox(_locationName))
      ],
    );
  }
}
