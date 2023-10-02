import 'package:flutter/material.dart';

class NetworkPublicPage extends StatefulWidget {
  const NetworkPublicPage({super.key});

  @override
  State<NetworkPublicPage> createState() => _NetworkPublicPageState();
}

class _NetworkPublicPageState extends State<NetworkPublicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Réseau publique"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 100,
              width: MediaQuery.sizeOf(context).width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            ),
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Recherche de profil utilisateur ...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 25,
                    itemBuilder: (context, index) {
                      return const Card(
                          child: ListTile(
                        leading: CircleAvatar(),
                        title: Text("User name"),
                      ));
                    }))
          ])),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Mettre mon compte en public"),
      ),
    );
  }
}
