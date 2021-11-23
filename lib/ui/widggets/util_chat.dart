import 'package:flutter/material.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({Key? key}) : super(key: key);

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  // Listado de cadenas
  var listado = [
    Chat("Ruthford Jay", "Hola"),
    Chat("Jim Jay", "Hola"),
    Chat("Ruthford Jay", "Como estas?"),
    Chat("Jim Jay", "Bien y tu?"),
    Chat("Ruthford Jay", "Normal"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Lista de Post
        Expanded(
          flex: 5,
          child: ListView.builder(
            itemCount: listado.length,
            itemBuilder: (context, i) {
              return Card(
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Column(
                  children: [
                    Text(
                      listado[i].name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(listado[i].desc),
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
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escribir Mensaje',
              ),
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

  Chat(this.name, this.desc);
}
