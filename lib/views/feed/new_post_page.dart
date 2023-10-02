import 'package:flutter/material.dart';

class NewPostPage extends StatefulWidget {
  const NewPostPage({super.key});

  @override
  State<NewPostPage> createState() => _NewPostPageState();
}

class _NewPostPageState extends State<NewPostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouvelle publication"),
      ),
      body: Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              height: 100,
              width: MediaQuery.sizeOf(context).width - 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            ),
            TextFormField(
              maxLines: 5,
              decoration: const InputDecoration(
                hintText: "Ecrire une publication",
                border: OutlineInputBorder(),
              ),
            ),
            const ListTile(
              title: Text("Aucune image"),
              subtitle: Text("Cliquez pour ajouter une photo"),
              trailing: Icon(Icons.add_a_photo),
            ),
            FloatingActionButton.extended(
                elevation: 1,
                onPressed: () {},
                label: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.sizeOf(context).width - 50,
                  child: const Text("Publier maintennant",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                )),
          ],
        ),
      ),
    );
  }
}
