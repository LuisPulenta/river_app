import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('River App'),
        centerTitle: true,
      ),
      body: const _HomeScreenView(),
    );
  }
}

//------------------------------------------------------
class _HomeScreenView extends StatelessWidget {
  const _HomeScreenView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        _CustomListTile(
            title: 'State Provider',
            subTitle: 'Provider con estado simple',
            location: '/state-provider'),
        _CustomListTile(
            title: 'Future Provider',
            subTitle: 'Un simple Future + Family',
            location: '/future-provider'),
        _CustomListTile(
            title: 'Stream Provider',
            subTitle: 'Un simple Stream',
            location: '/stream-provider'),
        _CustomListTile(
            title: 'State Notifier Provider',
            subTitle: 'Un Providercon estado personalizado',
            location: '/state-notifier-provider'),
      ],
    );
  }
}

//------------------------------------------------------
class _CustomListTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String location;

  const _CustomListTile(
      {required this.title, required this.subTitle, required this.location});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      onTap: () => context.push(location),
    );
  }
}
