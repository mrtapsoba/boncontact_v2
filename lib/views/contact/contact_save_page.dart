import 'package:boncontact_v2/views/contact/network_public_page.dart';
import 'package:boncontact_v2/views/contact/one_contact_detail_page.dart';
import 'package:flutter/material.dart';

class ContactSavePage extends StatefulWidget {
  const ContactSavePage({super.key});

  @override
  State<ContactSavePage> createState() => _ContactSavePageState();
}

class _ContactSavePageState extends State<ContactSavePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Recherche de contact ...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton.extended(
                    backgroundColor: Colors.blue,
                    elevation: 1,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const NetworkPublicPage();
                      }));
                    },
                    label: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Réseau publique",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                FloatingActionButton.extended(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    elevation: 1,
                    onPressed: () {},
                    label: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        "Sur le telephone",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 25,
                    itemBuilder: (context, index) {
                      return Card(
                          child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OneContactDetailPage();
                          }));
                        },
                        leading: const CircleAvatar(),
                        title: const Text("User name"),
                      ));
                    }))
          ])),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Mes discussions"),
        icon: const Icon(Icons.chat),
      ),
    );
  }
}
