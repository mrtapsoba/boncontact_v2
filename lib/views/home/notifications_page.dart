import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notifications"),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView.builder(
                itemCount: 17,
                itemBuilder: (context, index) {
                  return Card(
                      child: ListTile(
                    trailing: const CircleAvatar(),
                    title: const Text("Titre"),
                    subtitle: Text("description $index"),
                  ));
                })));
  }
}
