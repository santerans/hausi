import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HausiNuevoFirebaseUser {
  HausiNuevoFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

HausiNuevoFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HausiNuevoFirebaseUser> hausiNuevoFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HausiNuevoFirebaseUser>(
            (user) => currentUser = HausiNuevoFirebaseUser(user));
