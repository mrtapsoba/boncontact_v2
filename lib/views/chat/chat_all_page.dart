import 'package:boncontact_v2/views/chat/message_page.dart';
import 'package:flutter/material.dart';

class ChatAllPage extends StatefulWidget {
  const ChatAllPage({super.key});

  @override
  State<ChatAllPage> createState() => _ChatAllPageState();
}

class _ChatAllPageState extends State<ChatAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Discussions"),
      ),
      body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(children: [
            TextFormField(
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                hintText: "Recherche de discussion ...",
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
                      return Card(
                          child: ListTile(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const MessagePage();
                          }));
                        },
                        leading: const CircleAvatar(),
                        title: Text("User name $index"),
                        subtitle: const Text("..."),
                      ));
                    }))
          ])),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Nouvelle discussion"),
      ),
    );
  }
}
