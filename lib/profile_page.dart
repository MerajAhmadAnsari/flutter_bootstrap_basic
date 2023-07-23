import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int count = 20;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item : ${(index + 1)}'),
          leading: const Icon(Icons.pedal_bike),
          trailing: const Icon(Icons.face),
          onTap: () {
            debugPrint('Item : ${(index + 1)} selected');
          },
        );
      },
    );
  }
}
