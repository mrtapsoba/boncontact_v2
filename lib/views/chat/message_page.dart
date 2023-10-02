import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messagerie"),
      ),
      body: Container(
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            Expanded(
                child: ListView.builder(
                    reverse: true,
                    itemCount: 25,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 60, top: 0, bottom: 5),
                          child: Card(
                              child: ListTile(
                            leading: const CircleAvatar(),
                            title: Text("User name $index"),
                            subtitle: const Text("petit message ..."),
                          )));
                    })),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                IconButton.filledTonal(
                    onPressed: () {}, icon: const Icon(Icons.add)),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 120,
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        hintText: "Ecrire un message",
                        border: OutlineInputBorder(),
                      ),
                    )),
                IconButton.filled(
                    onPressed: () {}, icon: const Icon(Icons.send)),
              ],
            ),
          ])),
    );
  }
}
