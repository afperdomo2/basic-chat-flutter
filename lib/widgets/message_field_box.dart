import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
    );

    final inputDecoration = InputDecoration(
      hintText: 'Type a message',
      border: outlineInputBorder,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      suffixIcon: IconButton(
        icon: const Icon(Icons.send),
        onPressed: () {
          print("Send message");
        },
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          print('Submitted: $value');
        },
        onChanged: (value) {
          print('Changed: $value');
        },
      ),
    );
  }
}
