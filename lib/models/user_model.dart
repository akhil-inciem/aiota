class UserModel {
  final bool status;
  final String message;
  final String role;
  final UserData data;

  UserModel({
    required this.status,
    required this.message,
    required this.role,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      status: json['status'] ?? false,
      message: json['message'] ?? '',
      role: json['role'] ?? '',
      data: UserData.fromJson(json['data'] ?? {}),
    );
  }
}
class UserData {
  final String id;
  final bool isGuest;
  final bool isAgree;
  final bool isDeleted;

  UserData({
    required this.id,
    required this.isGuest,
    required this.isAgree,
    required this.isDeleted
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'].toString(),
      isGuest: json['isguest'] ?? false,
      isAgree: json['isAgree'] ?? false,
      isDeleted: json['isDeleted'] ?? false,
    );
  }
}

