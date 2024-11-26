import 'package:yes_no_app/models/message.dart';

class YesNoResponse {
  final String answer;
  final bool forced;
  final String image;

  YesNoResponse({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoResponse.fromJson(Map<String, dynamic> json) => YesNoResponse(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessage() {
    return Message(text: answer, isMe: false, isImage: false);
  }
}
