import 'package:flutter/material.dart';
import 'package:yes_no_app/models/message.dart';
import 'package:yes_no_app/services/yesno_service.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  final List<Message> _messages = [
    Message(text: 'Hello, how are you?', isMe: true, isImage: false),
    Message(text: 'I am fine, thank you!', isMe: false, isImage: false),
    Message(text: 'What are you doing?', isMe: true, isImage: false),
  ];

  List<Message> get messageList => _messages;

  Future<void> addMessage(String text) async {
    if (text.trim().isEmpty) {
      return;
    }
    final newMessage = Message(text: text, isMe: true, isImage: false);
    _messages.add(newMessage);
    notifyAndMoveToBottom();
    if (text.endsWith("?")) {
      await generateAnswer();
    }
  }

  Future<void> generateAnswer() async {
    final response = await YesNoService().getAnswer();
    final newMessage =
        Message(text: response.answer, isMe: false, isImage: false);
    _messages.add(newMessage);
    notifyAndMoveToBottom();
  }

  void notifyAndMoveToBottom() {
    notifyListeners();
    moveScroolToBottom();
  }

  Future<void> moveScroolToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (scrollController.hasClients) {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }
}
