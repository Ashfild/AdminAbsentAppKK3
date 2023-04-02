import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AdminAbsentAppFirebaseUser {
  AdminAbsentAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AdminAbsentAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AdminAbsentAppFirebaseUser> adminAbsentAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AdminAbsentAppFirebaseUser>(
      (user) {
        currentUser = AdminAbsentAppFirebaseUser(user);
        return currentUser!;
      },
    );
