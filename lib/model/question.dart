class ModelQuestion {
  String? id;
  String? question;
  String? answer;
  String? type;
  String? createdAt;
  String? updatedAt;

  ModelQuestion(
      {this.id,
      this.question,
      this.answer,
      this.type,
      this.createdAt,
      this.updatedAt});

  ModelQuestion.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
    type = json['type'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['type'] = this.type;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
