import 'package:flutter/material.dart';

class ServicesPlusPage extends StatefulWidget {
  const ServicesPlusPage({super.key});

  @override
  State<ServicesPlusPage> createState() => _ServicesPlusPageState();
}

class _ServicesPlusPageState extends State<ServicesPlusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Services plus"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Recherche de services ...",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 17,
                    itemBuilder: (context, index) {
                      return Card(
                          child: ListTile(
                        onTap: () {},
                        trailing: const CircleAvatar(),
                        title: Text("Service x$index"),
                      ));
                    }))
          ])),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text("Demander l'ajout de mon service")),
    );
  }
}
