import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wordhoard/repositories/base.dart';

class AuthRepository extends BaseRepository {
  AuthRepository(this._firebaseAuth, this._usersCollection);

  final FirebaseAuth _firebaseAuth;

  final CollectionReference _usersCollection;

  Stream<bool> get isSignedIn {
    return Rx.merge([
      _firebaseAuth.userChanges(),
      _firebaseAuth.idTokenChanges(),
      _firebaseAuth.authStateChanges(),
    ]).distinct().asyncMap(_isUserSignedIn);
  }

  Future<bool> _isUserSignedIn(User? user) async {
    if (user != null) {
      final userDocumentReference = _usersCollection.doc(user.uid);
      final userDocument = await userDocumentReference.get();
      if (!userDocument.exists) {
        await userDocumentReference.set(<String, dynamic>{});
      }
      return true;
    }
    return false;
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
