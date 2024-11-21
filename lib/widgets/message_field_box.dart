import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

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
          final textValue = textController.text;
          print("--> Send message $textValue");
          textController.clear();
        },
      ),
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextFormField(
        onTapOutside: (e) {
          focusNode.unfocus();
        },
        focusNode: focusNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          print('Submitted: $value');
          textController.clear();
          focusNode.requestFocus();
        },
      ),
    );
  }
}
