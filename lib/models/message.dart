class Message {
  final String text;
  final bool isMe;
  final bool isImage;
  final String? imageUrl;

  Message(
      {required this.text,
      required this.isMe,
      required this.isImage,
      this.imageUrl});
}
