import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class StreamScreen extends ConsumerWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final randomNames$ = ref.watch(namesStreamProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream Provider'),
        centerTitle: true,
      ),
      body: Center(
          child: randomNames$.when(
              data: (data) => Center(
                    child: Text(data),
                  ),
              error: (error, stackTrace) => Text('Error: $error'),
              loading: () => const CircularProgressIndicator())),
    );
  }
}
