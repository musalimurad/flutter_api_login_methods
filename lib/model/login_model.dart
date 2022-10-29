// ignore_for_file: public_member_api_docs, sort_constructors_first
class LoginModel {
  String? userName;
  String? token;
  int? status;
  LoginModel(
      {required this.userName, required this.token, required this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    userName = json['username'].toString();
    token = json['token'].toString();
    status = json['status'];
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = userName;
    data['token'] = token;
    data['status'] = status;
    return data;
  }
}
