import 'package:boncontact_v2/views/users/one_media_detail_page.dart';
import 'package:boncontact_v2/views/users/plateformes_page.dart';
import 'package:flutter/material.dart';

class ActiveUserPage extends StatefulWidget {
  const ActiveUserPage({super.key});

  @override
  State<ActiveUserPage> createState() => _ActiveUserPageState();
}

class _ActiveUserPageState extends State<ActiveUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Card(
                      child: SizedBox(
                    width: 150,
                    height: 150,
                  )),
                  Card(
                      child: SizedBox(
                    width: 150,
                    height: 150,
                  )),
                ],
              ),
              ListTile(
                title: const Text("User Name"),
                subtitle: const Text("User bio"),
                trailing: IconButton.filledTonal(
                    onPressed: () {}, icon: const Icon(Icons.edit_note)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton.extended(
                      backgroundColor: Colors.blue,
                      elevation: 1,
                      onPressed: () {},
                      label: Container(
                        alignment: Alignment.center,
                        child: const Text(
                          "Compte activé",
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  FloatingActionButton.extended(
                      elevation: 1,
                      onPressed: () {},
                      label: Container(
                        alignment: Alignment.center,
                        child: const Text("Compte public"),
                      )),
                  IconButton.filled(
                      onPressed: () {}, icon: const Icon(Icons.share))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Contact Information",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const OneMediaDetailPage();
                              }));
                            },
                            leading: const CircleAvatar(),
                            title: const Text("Social Media"),
                            trailing: const Icon(Icons.visibility),
                          ),
                        );
                      }))
            ],
          )),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const PlateformesListPage();
          }));
        },
        label: const Text("Plateformes"),
        icon: const Icon(Icons.link),
      ),
    );
  }
}
