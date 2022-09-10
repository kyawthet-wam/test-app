import 'package:firebase_auth/firebase_auth.dart';
import '../domain/user.dart' as my_user;

class FirebaseUserMapper {
  my_user.User toDomain(User _) {
    return my_user.User(
      id: _.uid,
      name: _.displayName ?? _.email!.split('@').first,
      emailAddress: _.email!,
    );
  }
}
