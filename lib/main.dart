import 'package:flutter/material.dart';
import 'location_list.dart';
import 'models/location.dart';
import 'mocks/mock_location.dart';

void main() {

  final mockLocations = MockLocation.FetchAll();

  return runApp(MaterialApp(
    home: LocationList(mockLocations)
  ));
}