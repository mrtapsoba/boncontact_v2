import 'package:boncontact_v2/views/contact/contact_save_page.dart';
import 'package:boncontact_v2/views/feed/feed_page.dart';
import 'package:boncontact_v2/views/home/notifications_page.dart';
import 'package:boncontact_v2/views/users/active_user_page.dart';
import 'package:flutter/material.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int currentIndex = 1;
  List pageList = const [ContactSavePage(), FeedPage(), ActiveUserPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Bon Contact"),
        actions: [
          ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.qr_code_2),
              label: const Text("Scanner")),
          IconButton.filledTonal(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NotificationsPage();
                }));
              },
              icon: const Icon(Icons.notifications)),
        ],
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: "Contacts"),
            BottomNavigationBarItem(
                icon: Icon(Icons.feed), label: "Publications"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Moi")
          ]),
    );
  }
}
