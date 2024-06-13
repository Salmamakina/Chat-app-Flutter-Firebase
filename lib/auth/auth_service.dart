import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
Future <UserCredential> SignInWithEmailPassword(String email, password) async {
  try{
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  } on FirebaseAuthException catch(e){
    throw Exception(e.code);
  }
}