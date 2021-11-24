import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  final String meUser;
  final List<Chat> conv;
  const ChatWidget({Key? key, required this.meUser, required this.conv})
      : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  final miTexto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Lista de Post
        Expanded(
          flex: 5,
          child: ListView.builder(
            itemCount: widget.conv.length,
            itemBuilder: (context, i) {
              return Card(
                color: widget.conv[i].me ? Colors.cyan : Colors.white,
                margin: EdgeInsets.fromLTRB(widget.conv[i].me ? 200 : 20, 5,
                    widget.conv[i].me ? 20 : 200, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        widget.conv[i].name,
                        textAlign: widget.conv[i].me
                            ? TextAlign.right
                            : TextAlign.left,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Text(
                        widget.conv[i].desc,
                        textAlign: widget.conv[i].me
                            ? TextAlign.right
                            : TextAlign.left,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: TextField(
              controller: miTexto,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribir Mensaje',
              ),
              onSubmitted: (value) {
                setState(() {
                  widget.conv.add(Chat(widget.meUser, value, true));
                  miTexto.clear();
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}

class Chat {
  late String name;
  late String desc;
  late bool me;

  Chat(this.name, this.desc, this.me);
}
