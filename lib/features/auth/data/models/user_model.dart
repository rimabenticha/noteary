import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String? uid;
  final String? username;
  final String? email;
  final String? photoURL;

  const UserModel({this.uid, this.username, this.email, this.photoURL});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    uid: json['userId'] as String?,
    username: json['username'] as String?,
    email: json['email'] as String?,
    photoURL: json['photoURL'] as String?,
  );

  Map<String, dynamic> toJson() => {
    'userId': uid,
    'username': username,
    'email': email,
    'photoURL': photoURL,
  };

  UserModel copyWith({
    String? uid,
    String? username,
    String? email,
    String? photoURL,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      username: username ?? this.username,
      email: email ?? this.email,
      photoURL: photoURL ?? this.photoURL,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [uid, username, email, photoURL];
}
