import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/my_message_bubble.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Expanded(
                child: Container(
              // color: Colors.grey[400],
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            )),
            const Text("Chat Input"),
          ],
        ),
      ),
    );
  }
}
