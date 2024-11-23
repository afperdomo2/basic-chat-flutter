import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/providers/chat_provider.dart';
import 'package:yes_no_app/widgets/message_field_box.dart';
import 'package:yes_no_app/widgets/my_message_bubble.dart';
import 'package:yes_no_app/widgets/your_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://img.freepik.com/premium-vector/black-cat-sitting-white-background-vector-illustration-cat_939485-399.jpg?w=1060',
            ),
          ),
        ),
        title: const Text(
          'Salem',
        ),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.isMe)
                    ? MyMessageBubble(message: message)
                    : YourMessageBubble(message: message);
              },
            )),
            MessageFieldBox(
              onSend: (value) {
                chatProvider.addMessage(value);
              },
            ),
          ],
        ),
      ),
    );
  }
}
