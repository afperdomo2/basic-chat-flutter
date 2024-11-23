import 'package:flutter/material.dart';
import 'package:yes_no_app/models/message.dart';

class ChatProvider extends ChangeNotifier {
  final List<Message> _messages = [
    Message(text: 'Hello, how are you?', isMe: true, isImage: false),
    Message(text: 'I am fine, thank you!', isMe: false, isImage: false),
    Message(text: 'What are you doing?', isMe: true, isImage: false),
  ];

  List<Message> get messageList => _messages;

  void addMessage(String text) {
    final newMessage = Message(text: text, isMe: true, isImage: false);
    _messages.add(newMessage);
    notifyListeners();
  }
}
