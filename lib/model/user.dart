class ModelUser {
  String? name;
  String? email;
  String? password;

  ModelUser({this.name, this.email, this.password});

  ModelUser.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }
}
