import 'package:flutter/material.dart';
import 'models/location.dart';
import 'mocks/mock_location.dart';
import 'styles.dart';

class LocationDetail extends StatelessWidget {

  final int locationID;
  LocationDetail(this.locationID);

  @override
  Widget build(BuildContext context) {
    var location = MockLocation.fetch(this.locationID);
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
      child:
        Text(
          title,
          style: Styles.headerLarge
        )
    );
  }

  Widget _sectionText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 5.0),
      child: Text(
        text,
        style: Styles.textDefault
        )
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}