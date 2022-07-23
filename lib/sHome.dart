import 'package:flutter/material.dart';
import 'package:test1/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class sHome extends StatefulWidget {
  const sHome({Key? key}) : super(key: key);

  @override
  State<sHome> createState() => _sHomeState();
}

void getCurrentUser() {}

class _sHomeState extends State<sHome> {
  final _auth = FirebaseAuth.instance;
  late User loggedInUser;
  void getCurrentuser() async {
    try {
      final user = _auth.currentUser!;
      loggedInUser = user;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.red),
    );
  }
}
