class ModelAllLessons {
  int? id;
  String? title;
  String? content;
  String? createdAt;
  String? updatedAt;
  List<LessonQuestions>? lessonQuestions;

  ModelAllLessons(
      {this.id,
      this.title,
      this.content,
      this.createdAt,
      this.updatedAt,
      this.lessonQuestions});

  ModelAllLessons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    if (json['lessonQuestions'] != null) {
      lessonQuestions = <LessonQuestions>[];
      json['lessonQuestions'].forEach((v) {
        lessonQuestions!.add(new LessonQuestions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['content'] = this.content;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.lessonQuestions != null) {
      data['lessonQuestions'] =
          this.lessonQuestions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LessonQuestions {
  int? id;
  int? lessonId;
  String? questionId;
  String? createdAt;
  String? updatedAt;
  Question? question;

  LessonQuestions(
      {this.id,
      this.lessonId,
      this.questionId,
      this.createdAt,
      this.updatedAt,
      this.question});

  LessonQuestions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    lessonId = json['lessonId'];
    questionId = json['questionId'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    question = json['question'] != null
        ? new Question.fromJson(json['question'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['lessonId'] = this.lessonId;
    data['questionId'] = this.questionId;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.question != null) {
      data['question'] = this.question!.toJson();
    }
    return data;
  }
}

class Question {
  String? id;
  String? question;
  String? answer;
  String? type;
  String? createdAt;
  String? updatedAt;

  Question(
      {this.id,
      this.question,
      this.answer,
      this.type,
      this.createdAt,
      this.updatedAt});

  Question.fromJson(Map<String, dynamic> json) {
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
