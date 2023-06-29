import 'package:flutter_riverpod/flutter_riverpod.dart';

final randomNameProvider = StateProvider<String>((ref) {
  return 'Luis';
});
