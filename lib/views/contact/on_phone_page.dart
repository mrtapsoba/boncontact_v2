import 'package:flutter/material.dart';

class OnePhonePage extends StatefulWidget {
  const OnePhonePage({super.key});

  @override
  State<OnePhonePage> createState() => _OnePhonePageState();
}

class _OnePhonePageState extends State<OnePhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact du telephone"),
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
        label: const Text("Inviter des amis"),
      ),
    );
  }
}
