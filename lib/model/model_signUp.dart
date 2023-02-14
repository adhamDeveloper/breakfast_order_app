// Sign Up ..
class ModelSignUp {
  String token;
  String successMessage;

  ModelSignUp({this.token, this.successMessage});

  ModelSignUp.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    successMessage = json['success_message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['success_message'] = this.successMessage;
    return data;
  }
}
//