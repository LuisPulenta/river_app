import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_app/presentation/providers/providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    final name = ref.watch(randomNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          name,
          style: titleStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh_rounded), onPressed: () {}),
    );
  }
}
