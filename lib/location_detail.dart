import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {

  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _section("One!", Colors.red),
            _section("Two!", Colors.blue),
            _section("Three!", Colors.green),
            _section("Four!", Colors.yellow),
            _section("Five!", Colors.grey),
          ],
        )
      );
  }

  Widget _section(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(title),
    );
  }
}