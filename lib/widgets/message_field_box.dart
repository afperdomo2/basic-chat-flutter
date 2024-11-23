import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onSend;

  const MessageFieldBox({super.key, required this.onSend});

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
          final textValue = textController.text.trim();
          if (textValue.isNotEmpty) {
            onSend(textValue);
          }
          textController.clear();
          focusNode.requestFocus();
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
          final textValue = value.trim();
          if (textValue.isNotEmpty) {
            onSend(textValue);
          }
          textController.clear();
          focusNode.requestFocus();
        },
      ),
    );
  }
}
