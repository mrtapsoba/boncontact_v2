import 'package:boncontact_v2/views/users/one_media_detail_page.dart';
import 'package:flutter/material.dart';

class PlateformesListPage extends StatefulWidget {
  const PlateformesListPage({super.key});

  @override
  State<PlateformesListPage> createState() => _PlateformesListPageState();
}

class _PlateformesListPageState extends State<PlateformesListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Média sociaux"),
        ),
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  hintText: "Recherche de plateformes ...",
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
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const OneMediaDetailPage();
                        }));
                      },
                      trailing: const CircleAvatar(),
                      title: Text("Social media $index"),
                    ));
                  }))
            ])));
  }
}
