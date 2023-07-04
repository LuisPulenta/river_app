import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/config/config.dart';

final namesStreamProvider = StreamProvider<String>((ref) async* {
  // await Future.delayed(const Duration(seconds: 2));
  // yield [];
  // await Future.delayed(const Duration(seconds: 2));
  // yield ['Luis'];
  // await Future.delayed(const Duration(seconds: 2));
  // yield ['Luis', 'Pablo'];
  // await Future.delayed(const Duration(seconds: 2));
  // yield ['Luis', 'Pablo', 'Gonzalo'];

  await for (final name in RandomGenerator.randomNamesStream()) {
    yield name;
  }
});
