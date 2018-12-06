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
          children: _renderFacts(location),
        )
      );
  }

  List<Widget> _renderFacts(Location location) {
    var result = List<Widget>();
    location.facts.forEach((fact) {
      result.add(_sectionTitle(fact.title));
      result.add(_sectionText(fact.text));
    });
    return result;
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}