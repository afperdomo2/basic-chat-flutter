import 'package:flutter/material.dart';

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
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: FilledButton(onPressed: () {}, child: const Text("Click Me")),
      ),
    );
  }
}
