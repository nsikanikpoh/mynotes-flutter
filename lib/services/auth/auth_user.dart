import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final isEmailVerified;
  const AuthUser(this.isEmailVerified);
  //a factory initializer
  factory AuthUser.fromFirebase(User user) => AuthUser(user.emailVerified);
}
