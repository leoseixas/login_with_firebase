import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable {
  final String userId;
  final String email;
  final String name;

  const MyUserEntity({
    required this.userId,
    required this.email,
    required this.name,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> map) {
    return MyUserEntity(
      userId: map['userId'],
      email: map['email'],
      name: map['name'],
    );
  }

  @override
  List<Object?> get props => [
        userId,
        email,
        name,
      ];
}
