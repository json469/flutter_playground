import '../../lib/models/location.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test /locations and /locations/:id', () async {
    final locations = await Location.fetchAll();
    for (var location in locations) {
      expect(location.name, hasLength(greaterThan(0)));
      expect(location.url, hasLength(greaterThan(0)));

      final fetchedLocation = await Location.fetchByID(location.id);
      expect(fetchedLocation.name, equals(location.name));
      expect(fetchedLocation.url, equals(location.url));
    }
  });
} 