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
          children: _renderBody(context, location),
        )
      );
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = List<Widget>();
    location.facts.forEach((fact) {
      result.add(_sectionTitle(fact.title));
      result.add(_sectionText(fact.text));
    });
    return result;
  }

  Widget _sectionTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 5.0),
      child: Text(title,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 25.0,
          color: Colors.black,
        )
      )
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 5.0),
      child: Text(text)
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}