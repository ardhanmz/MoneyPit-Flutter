class UserModel {
  String userId;
  String username;
  String password;
  String email;
  String income;

  UserModel(
      {required this.userId,
      required this.username,
      required this.password,
      required this.email,
      required this.income});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        userId: json['userId'],
        username: json['username'],
        password: json['password'],
        email: json['email'],
        income: json['income']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['username'] = this.username;
    data['password'] = this.password;
    data['income'] = this.income;
    return data;
  }
}
