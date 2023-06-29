import 'package:flutter/material.dart';

class StateProviderScreen extends StatelessWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium;

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Luis',
          style: titleStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.refresh_rounded), onPressed: () {}),
    );
  }
}
