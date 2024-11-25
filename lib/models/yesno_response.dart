class YesNoResponse {
  String answer;
  bool forced;
  String image;

  YesNoResponse({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoResponse.fromJson(Map<String, dynamic> json) {
    return YesNoResponse(
      answer: json['answer'],
      forced: json['forced'],
      image: json['image'],
    );
  }
}
