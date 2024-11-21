class Message {
  final String message;
  final bool isMe;
  final bool isImage;
  final String? imageUrl;

  Message(
      {required this.message,
      required this.isMe,
      required this.isImage,
      required this.imageUrl});
}
